using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UnitInventory : MonoBehaviour {
    public enum AmmoType { Ammo_556, Ammo_762, Ammo_40mm };

    List<Weapon> weapons = new List<Weapon>();
    Dictionary<AmmoType, int> ammunition = new Dictionary<AmmoType, int>();
    
    public void AddWeapon(Weapon weapon) {

    }
}
