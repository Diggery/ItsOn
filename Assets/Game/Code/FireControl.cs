using System.Collections;
using System.Collections.Generic;
using TPCEngine;
using UnityEngine;

public class FireControl : MonoBehaviour {
    StandaloneController inputController;


    void Start() {
        inputController = GetComponent<StandaloneController>();
    }

    void Update() {
        if (inputController.GetButtonDown("Fire1")) {
            Debug.Log("Fire!@");
        }
    }
}
