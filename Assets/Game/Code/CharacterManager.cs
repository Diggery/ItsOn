using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharacterManager : MonoBehaviour {

    public Weapon EquippedWeapon { get; private set; }
    Transform equippedWeaponAttach;

    void Start() {

    }

    void Update() {

    }

    public bool EquipWeapon(Weapon newWeapon) {
        EquippedWeapon = newWeapon;
        EquippedWeapon.Equip(this, equippedWeaponAttach);
        return true;
    }



    public int GetRounds(int amountRequested) {
        int amountReturned = amountRequested;
        return amountReturned;
    }

}