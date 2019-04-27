using System.Collections;
using System.Collections.Generic;
using TPCEngine;
using UnityEngine;

public class FireControl : MonoBehaviour {
    StandaloneController inputController;
    CharacterManager characterManager;

    void Start() {
        inputController = GetComponent<StandaloneController>();
        characterManager = GetComponent<CharacterManager>();
    }

    void Update() {
        if (inputController.GetButtonDown("Fire1")) {
            Weapon weapon = characterManager.EquippedWeapon;
            if (weapon && weapon.ReadyToFire) {
                Debug.Log("Fire!@");
                weapon.Fire();
            }
        }
    }
}
