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

        if (!inputTarget) return;

        Vector2 newKeyInput = Vector2.zero;

        newKeyInput.x = Input.GetAxis("Horizontal") * moveSpeed;
        newKeyInput.y = Input.GetAxis("Vertical") * moveSpeed;

        inputTarget.SetInput(newKeyInput, Mathf.Approximately(0, newKeyInput.x) || Mathf.Approximately(0, newKeyInput.y));

	}
}
