using System.Collections;
using System.Collections.Generic;
using Photon.Pun;
using UnityEngine;

public class UnitControl : MonoBehaviourPunCallbacks, IPunObservable {

    bool initComplete = false;
    MotionControl motionControl;

    public static GameObject LocalPlayerInstance;

    public void Awake() {

        if (photonView.IsMine) {
            LocalPlayerInstance = gameObject;
        }

        DontDestroyOnLoad(gameObject);
    }

    void Start() {
        Init();
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
}