using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MotionControl : MonoBehaviour {

    Animator animator;
    Vector2 currentInput = Vector2.zero;
    CharacterController characterController;

	void Start () {
        animator = GetComponent<Animator>();
        characterController = GetComponent<CharacterController>();
	}
	
	void Update () {

        Vector2 newInput = Vector2.zero;
        bool keyDown = false;
        if (Input.GetKey(KeyCode.W)) {
            newInput.y = 1.0f;
            keyDown = true;
        } else if (Input.GetKey(KeyCode.S)) {
            newInput.y = -1.0f;
            keyDown = true;
        } else {
            newInput.y = 0;
        }

        if (Input.GetKey(KeyCode.A)) {
            newInput.x = -1.0f;
            keyDown = true;
        } else if (Input.GetKey(KeyCode.D)) {
            newInput.x = 1.0f;
            keyDown = true;
        } else {
            newInput.x = 0;
        }

        currentInput = Vector2.Lerp(currentInput, newInput, Time.deltaTime * 5);
        animator.SetBool("Moving", keyDown && currentInput.magnitude > 0.1f);
        animator.SetFloat("InputX", currentInput.x);
        animator.SetFloat("InputY", currentInput.y);
        characterController.Move(Physics.gravity);
	}
}
