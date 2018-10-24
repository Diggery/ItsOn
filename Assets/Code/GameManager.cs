using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour {

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
        ActiveCamera = GameObject.FindGameObjectWithTag("CameraRoot").GetComponent<CameraControl>();

        inputControl = gameObject.AddComponent<InputControl>();
        inputControl.InputTarget = player.GetComponent<UnitControl>();
        cameraControl.CameraTarget = inputControl.InputTarget.transform;
    }
    void Update()
    {
        
    }
}
