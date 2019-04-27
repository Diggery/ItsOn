using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharacterManager : MonoBehaviour {

    public Weapon EquippedWeapon { get; private set; }
    public Transform equippedWeaponAttach;

    public Weapon testWeapon;

    void Start() {
        EquipWeapon(testWeapon);
    }

    void Update() {

    }

    public bool EquipWeapon(Weapon newWeapon) {
        Debug.Log("Equipping " + newWeapon.name + " for " + this.name);
        EquippedWeapon = newWeapon;
        return EquippedWeapon.Equip(this, equippedWeaponAttach);
    }



    public int GetRounds(int amountRequested) {
        int amountReturned = amountRequested;
        return amountReturned;
    }

}