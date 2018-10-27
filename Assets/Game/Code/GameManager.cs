using Photon.Pun;
using Photon.Realtime;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviourPunCallbacks {


    [SerializeField]
    private GameObject playerPrefab;

    private GameObject player;

    static GameManager instance;

    public GameManager Instance {
        get { return instance; }
    }

    private void CreateInstance() {
        if (instance == null) {
            instance = this;
        } else {
            Destroy(this.gameObject);
        }
    }
    public CameraControl ActiveCamera { get; set; }
    public InputControl ActiveInput { get; private set; }

    private void Awake() {
        CreateInstance();
    }

    void Start() {

        if (!PhotonNetwork.IsConnected) {
            SceneManager.LoadScene("Launcher");
            return;
        }

        if (UnitControl.LocalPlayerInstance == null) {
            Vector3 spawnPos = GameObject.FindGameObjectWithTag("HoldingArea").transform.position;
            player = PhotonNetwork.Instantiate(this.playerPrefab.name, spawnPos, Quaternion.identity, 0);
        }

        ActiveInput = gameObject.AddComponent<InputControl>();
        ActiveInput.InputTarget = player.GetComponent<UnitControl>();

        ActiveCamera = GameObject.FindGameObjectWithTag("CameraRoot").GetComponent<CameraControl>();
        ActiveCamera.CameraTarget = ActiveInput.InputTarget.transform;
    }

    void Update() {
        
        if (!playerPrefab) { 
            Debug.LogError("<Color=Red><b>Missing</b></Color> playerPrefab Reference. Please set it up in GameObject 'Game Manager'", this);
            return;
        } 
    }

    public override void OnPlayerEnteredRoom(Player other) {
        Debug.Log("OnPlayerEnteredRoom() " + other.NickName); // not seen if you're the player connecting

        if (PhotonNetwork.IsMasterClient) {
            Debug.LogFormat("OnPlayerEnteredRoom IsMasterClient {0}", PhotonNetwork.IsMasterClient); 

        }
    }

    public override void OnPlayerLeftRoom(Player other) {
        Debug.Log("OnPlayerLeftRoom() " + other.NickName); // seen when other disconnects

        if (PhotonNetwork.IsMasterClient) {
            Debug.LogFormat("OnPlayerEnteredRoom IsMasterClient {0}", PhotonNetwork.IsMasterClient); 
        }
    }

    public override void OnLeftRoom() {
    }

    public void LeaveRoom() {
        PhotonNetwork.LeaveRoom();
    }

    public void QuitApplication() {
        Application.Quit();
    }

    void LoadArena() {
        if (!PhotonNetwork.IsMasterClient) {
            Debug.LogError("PhotonNetwork : Trying to Load a level but we are not the master Client");
        }

        Debug.LogFormat("PhotonNetwork : Loading Level : {0}", PhotonNetwork.CurrentRoom.PlayerCount);

        PhotonNetwork.LoadLevel("PunBasics-Room for " + PhotonNetwork.CurrentRoom.PlayerCount);
    }

}
