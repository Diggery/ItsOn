using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class InventoryObject : ScriptableObject {


	[System.Serializable]
	public class InventoryEntry {	
		public string name;
        public GameObject weapon1;
        public GameObject weapon2;
        public GameObject weapon3;
		public Dictionary<UnitInventory.AmmoType, int> ammunition;
	}	

	public InventoryEntry[] entries;
	
	public GameObject GetWeapon(string unitName) {
		GameObject weaponObj = null;
		foreach (InventoryEntry entry in entries) {
            if (entry.name.Equals(unitName) && entry.weapon1) {
				weaponObj = Instantiate(entry.weapon1, Vector3.zero, Quaternion.identity) as GameObject;
				break;
			}
		}
		return weaponObj;
	}

	public Dictionary<UnitInventory.AmmoType, int> GetAmmunition(string unitName) {
		foreach (InventoryEntry entry in entries) {
			if (entry.name.Equals(unitName)) {
				return entry.ammunition;
			}
		}
		return new Dictionary<UnitInventory.AmmoType, int>();
	}
}
