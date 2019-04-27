using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Weapon : MonoBehaviour {

    CharacterManager characterManager;
    MotionControl motionControl;

    int roundsInMagazine = 0;
    int magazineCapacityNormal = 0;
    int magazineCapacityExtend = 0;
    bool hasExtendedMag = false;

    public GameObject bullet;
    Transform magazine;

    bool isReloading = false;
    bool isEquipped = false;
    public bool ReadyToFire {
        get {
            return isEquipped && roundsInMagazine > 0 && !isReloading;
        }
    }

    void Start() {
        magazine = transform.Find("Magazine");
    }

    public void Fire() {
        Debug.Log("Trying to Fire");

        if (!ReadyToFire) return;
        if (roundsInMagazine <= 0) {
            Reload();
            return;
        }

        LaunchProjectile();
    }

    public virtual void LaunchProjectile() {
        Debug.Log("Fire!!!");

    }

    public bool Reload() {
        int newRounds = characterManager.GetRounds(hasExtendedMag ? magazineCapacityExtend : magazineCapacityNormal);
        if (newRounds <= 0) {
            Debug.LogFormat("{0} is out of ammo", characterManager.name);
            return false;
        }
        magazine.SetParent(null);
        magazine.gameObject.AddComponent<Rigidbody>();
        roundsInMagazine = newRounds;
        motionControl.PlayReload(this);
        isReloading = true;
        return true;
    }

    public void ReloadComplete() {
        isReloading = false;
    }

    public void Equip(CharacterManager owner, Transform attach) {
        isEquipped = true;
        characterManager = owner;
        transform.SetParent(attach);
        transform.localPosition = Vector3.zero;
        transform.localRotation = Quaternion.identity;
    }

    public void Stow() {
        isEquipped = false;
    }
}
