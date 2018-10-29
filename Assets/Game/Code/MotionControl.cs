using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MotionControl : MonoBehaviour {

    UnitControl unitControl;
    Animator animator;
    CharacterController characterController;

    CameraControl cameraControl;
    Vector2 currentInput = Vector2.zero;

    
    void Start () {
        unitControl = GetComponent<UnitControl>();
        animator = GetComponent<Animator>();
        characterController = GetComponent<CharacterController>();
	}
	
    public void SetInput (Vector3 newInput, bool keyDown) {
        if (!animator || !unitControl || (unitControl && unitControl.inHoldingArea)) return;

        currentInput = Vector2.Lerp(currentInput, newInput, Time.deltaTime * 5);
        animator.SetBool("Moving", keyDown && currentInput.magnitude > 0.1f);
        animator.SetFloat("InputX", currentInput.x);
        animator.SetFloat("InputY", currentInput.y);
        characterController.Move(Physics.gravity);
	}

    public void PlayReload(Weapon weapon) {
        animator.SetTrigger("Reload");
    }

    public void AnimComplete(string anim) {
        switch (anim) {
            case "Reload":
                Weapon weapon = unitControl.CurrentWeapon;
                weapon.ReloadComplete();
                break;
            default:
                Debug.Log("Don't know about the animation called " + anim);
                break;
        }
        
    }
}
