using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using UnityEngine;

public class UnitControl : MonoBehaviourPunCallbacks, IPunObservable {

    public bool inHoldingArea = true;
    MotionControl motionControl;
    UnitInventory unitInventory;

    Weapon currentWeapon;
    public Weapon CurrentWeapon {
        get {
            return currentWeapon;
        }
        set {
            value.Equip(this);
            currentWeapon.Stow();
            currentWeapon = value;
        }
    }

    public static GameObject LocalPlayerInstance;

    public void Awake() {
        gameObject.name = photonView.Owner.NickName;

        if (photonView.IsMine) {
            LocalPlayerInstance = gameObject;
            StartCoroutine(MoveOutOfHoldingArea());
        } else {

            inHoldingArea = false;
        }

        DontDestroyOnLoad(gameObject);
    }

    void Start() {
        motionControl = gameObject.AddComponent<MotionControl>();
        unitInventory = gameObject.AddComponent<UnitInventory>();
    }

    private IEnumerator MoveOutOfHoldingArea() {
        yield return new WaitForSeconds(3);
        inHoldingArea = false;
        Transform bestSpawnLocation = SpawnPoint.FindSpawnLocation();
        Debug.LogFormat("Moving {0} to {1}", transform.name, bestSpawnLocation.name);
        transform.position = bestSpawnLocation.position;
    }

    public void SetInput(Vector2 input, bool keyDown) {
        motionControl.SetInput(input, keyDown);
    }

    private void Update() {
        if (!inHoldingArea) return;
    }

    public void OnPhotonSerializeView(PhotonStream stream, PhotonMessageInfo info) {

        if (stream.IsWriting) {
            // We own this player: send the others our data
            //stream.SendNext(this.IsFiring);
            //stream.SendNext(this.Health);
        } else {
            // Network player, receive data
            //this.IsFiring = (bool)stream.ReceiveNext();
            //this.Health = (float)stream.ReceiveNext();
        }
    }
 
    public int GetRounds(int amount) {
        return amount;
    }

    public void AddWeapon(Weapon weapon) {
        unitInventory.AddWeapon(weapon);
    }

}