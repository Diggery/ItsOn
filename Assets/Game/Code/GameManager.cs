using Photon.Pun;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour {


    [SerializeField]
    private GameObject playerPrefab;

    public GameObject player;

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

    private CameraControl cameraControl;
    public CameraControl ActiveCamera {
        get { return cameraControl; }
        set { cameraControl = value; }
    }

    private InputControl inputControl;
    public InputControl ActiveInput {
        get { return inputControl; }
    }

    private void Awake() {
        CreateInstance();
    }

    void Start() {

        if (!PhotonNetwork.IsConnected) {
            SceneManager.LoadScene("Launcher");
            return;
        }

        if (PlayerManager.LocalPlayerInstance == null) {
            Debug.LogFormat("We are Instantiating LocalPlayer from {0}", SceneManagerHelper.ActiveSceneName);

            // we're in a room. spawn a character for the local player. it gets synced by using PhotonNetwork.Instantiate
            PhotonNetwork.Instantiate(this.playerPrefab.name, new Vector3(0f, 5f, 0f), Quaternion.identity, 0);
        } else {

            Debug.LogFormat("Ignoring scene load for {0}", SceneManagerHelper.ActiveSceneName);
        }

        ActiveCamera = GameObject.FindGameObjectWithTag("CameraRoot").GetComponent<CameraControl>();

        inputControl = gameObject.AddComponent<InputControl>();
        inputControl.InputTarget = player.GetComponent<UnitControl>();
        cameraControl.CameraTarget = inputControl.InputTarget.transform;



    }
    void Update()
    {

    }



        // in case we started this demo with the wrong scene being active, simply load the menu scene


        if (playerPrefab == null) { // #Tip Never assume public properties of Components are filled up properly, always check and inform the developer of it.

            Debug.LogError("<Color=Red><b>Missing</b></Color> playerPrefab Reference. Please set it up in GameObject 'Game Manager'", this);
        } else {





        }

    }

    /// <summary>
    /// MonoBehaviour method called on GameObject by Unity on every frame.
    /// </summary>
    void Update() {
        // "back" button of phone equals "Escape". quit app if that's pressed
        if (Input.GetKeyDown(KeyCode.Escape)) {
            QuitApplication();
        }
    }

    #endregion

    #region Photon Callbacks

    /// <summary>
    /// Called when a Photon Player got connected. We need to then load a bigger scene.
    /// </summary>
    /// <param name="other">Other.</param>
    public override void OnPlayerEnteredRoom(Player other) {
        Debug.Log("OnPlayerEnteredRoom() " + other.NickName); // not seen if you're the player connecting

        if (PhotonNetwork.IsMasterClient) {
            Debug.LogFormat("OnPlayerEnteredRoom IsMasterClient {0}", PhotonNetwork.IsMasterClient); // called before OnPlayerLeftRoom

            LoadArena();
        }
    }

    /// <summary>
    /// Called when a Photon Player got disconnected. We need to load a smaller scene.
    /// </summary>
    /// <param name="other">Other.</param>
    public override void OnPlayerLeftRoom(Player other) {
        Debug.Log("OnPlayerLeftRoom() " + other.NickName); // seen when other disconnects

        if (PhotonNetwork.IsMasterClient) {
            Debug.LogFormat("OnPlayerEnteredRoom IsMasterClient {0}", PhotonNetwork.IsMasterClient); // called before OnPlayerLeftRoom

            LoadArena();
        }
    }

    /// <summary>
    /// Called when the local player left the room. We need to load the launcher scene.
    /// </summary>
    public override void OnLeftRoom() {
        SceneManager.LoadScene("PunBasics-Launcher");
    }

    #endregion

    #region Public Methods

    public void LeaveRoom() {
        PhotonNetwork.LeaveRoom();
    }

    public void QuitApplication() {
        Application.Quit();
    }

    #endregion

    #region Private Methods

    void LoadArena() {
        if (!PhotonNetwork.IsMasterClient) {
            Debug.LogError("PhotonNetwork : Trying to Load a level but we are not the master Client");
        }

        Debug.LogFormat("PhotonNetwork : Loading Level : {0}", PhotonNetwork.CurrentRoom.PlayerCount);

        PhotonNetwork.LoadLevel("PunBasics-Room for " + PhotonNetwork.CurrentRoom.PlayerCount);
    }

    #endregion

}
}
