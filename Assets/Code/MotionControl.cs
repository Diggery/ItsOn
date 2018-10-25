using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MotionControl : MonoBehaviour {

    Animator animator;
    Vector2 currentInput = Vector2.zero;
    CharacterController characterController;

    CameraControl cameraControl;

	void Start () {
        animator = GetComponent<Animator>();
        characterController = GetComponent<CharacterController>();
	}
	
    public void SetInput (Vector3 newInput, bool keyDown) {

        currentInput = Vector2.Lerp(currentInput, newInput, Time.deltaTime * 5);
        animator.SetBool("Moving", keyDown && currentInput.magnitude > 0.1f);
        animator.SetFloat("InputX", currentInput.x);
        animator.SetFloat("InputY", currentInput.y);
        characterController.Move(Physics.gravity);

        
	}
}
