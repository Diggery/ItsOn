using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InputControl : MonoBehaviour {

    float moveSpeed = 1;

    UnitControl inputTarget;
    public UnitControl InputTarget {
        get { return inputTarget; }
        set { inputTarget = value; }
    }

    void Start () {
        Cursor.lockState = CursorLockMode.Locked;


    }

    void Update () {
        if (Input.GetKeyDown(KeyCode.Escape)) {
            Cursor.lockState = CursorLockMode.None;
        }

        Vector2 newInput = Vector2.zero;

        newInput.x = Input.GetAxis("Horizontal") * moveSpeed;
        newInput.y = Input.GetAxis("Vertical") * moveSpeed;

        inputTarget.SetInput(newInput, newInput.x != 0 || newInput.y != 0);
	}
}
