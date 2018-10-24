using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UnitControl : MonoBehaviour {

    MotionControl motionControl;

    void Start() {
        motionControl = gameObject.AddComponent<MotionControl>();
    }

    public void SetInput(Vector2 input, bool keyDown) {
        motionControl.SetInput(input, keyDown);
    }
}