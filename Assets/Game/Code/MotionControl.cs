using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MotionControl : MonoBehaviour {

    UnitControl unitControl;
    Animator animator;
    CharacterController characterController;

    CameraControl cameraControl;
    Vector2 moveInput = Vector2.zero;

    
    void Start () {
        unitControl = GetComponent<UnitControl>();
        animator = GetComponent<Animator>();
        characterController = GetComponent<CharacterController>();
	}
	
    public void SetInput (Vector2 keyInput, bool keyDown) {
        if (!animator || !unitControl || (unitControl && unitControl.inHoldingArea)) return;

        moveInput = Vector2.Lerp(moveInput, keyInput, Time.deltaTime * 5);
        animator.SetBool("Moving", keyDown && moveInput.magnitude > 0.1f);
        animator.SetFloat("InputX", moveInput.x);
        animator.SetFloat("InputY", moveInput.y);
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
