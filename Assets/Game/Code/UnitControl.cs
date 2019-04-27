using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using UnityEngine;

public class UnitControl {

    Weapon currentWeapon;

    void Start() {

    }

    void Update() {

    }

    public bool EquipWeapon(Weapon newWeapon) {
        currentWeapon = newWeapon;
        currentWeapon.Equip(this);
        return true;
    }

}