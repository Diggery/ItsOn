using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InputControl : MonoBehaviour {

    public GameObject player;

    UnitControl unitControl;

	void Start () {
        unitControl = player.GetComponent<UnitControl>();
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

        unitControl.SetInput(newInput, keyDown);
	}
}
