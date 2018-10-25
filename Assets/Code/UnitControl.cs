using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UnitControl : MonoBehaviour {

    public bool delayInit = false;
    bool initComplete = false;
    MotionControl motionControl;

    void Start() {
        Invoke("Init", delayInit ? 1 : 0);
    }

    private void Init() {
        motionControl = gameObject.AddComponent<MotionControl>();

        initComplete = true;
    }

    public void SetInput(Vector2 input, bool keyDown) {
        motionControl.SetInput(input, keyDown);
    }

    private void Update() {
        if (!initComplete) return;
    }
}