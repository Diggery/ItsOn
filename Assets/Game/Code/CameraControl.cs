﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraControl : MonoBehaviour {


    Transform cameraTarget;
    public Transform CameraTarget {
        set { cameraTarget = value; }
    }

    Vector3 cameraDir;
    public Vector3 CameraDir {
        set { cameraDir = value; }
    }

    Transform cameraTransform;

    public Vector3 cameraOffset = Vector3.zero;


    public float sensitivityX = 15F;
    public float sensitivityY = 15F;

    public float minimumX = -360F;
    public float maximumX = 360F;

    public float minimumY = -60F;
    public float maximumY = 60F;

    float rotationX = 0F;
    float rotationY = 0F;

    private List<float> rotArrayX = new List<float>();
    float rotAverageX = 0F;

    private List<float> rotArrayY = new List<float>();
    float rotAverageY = 0F;

    public float frameCounter = 20;

    Quaternion originalRotation;


    void Start() {

        cameraTransform = transform.Find("Camera");
        originalRotation = transform.localRotation;
    }

    void LateUpdate()
    {
        if (!cameraTarget) return;

        Vector3 rootPos = cameraTarget.position + (Vector3.up * cameraOffset.y);
        transform.position = rootPos;
        cameraTransform.localPosition = new Vector3(cameraOffset.x, 0, cameraOffset.z);


        rotAverageY = 0f;
        rotAverageX = 0f;

        rotationY += Input.GetAxis("Mouse Y") * sensitivityY;
        rotationX += Input.GetAxis("Mouse X") * sensitivityX;

        rotArrayY.Add(rotationY);
        rotArrayX.Add(rotationX);

        if (rotArrayY.Count >= frameCounter) {
            rotArrayY.RemoveAt(0);
        }
        if (rotArrayX.Count >= frameCounter) {
            rotArrayX.RemoveAt(0);
        }

        for (int j = 0; j < rotArrayY.Count; j++) {
            rotAverageY += rotArrayY[j];
        }
        for (int i = 0; i < rotArrayX.Count; i++) {
            rotAverageX += rotArrayX[i];
        }

        rotAverageY /= rotArrayY.Count;
        rotAverageX /= rotArrayX.Count;

        rotAverageY = ClampAngle(rotAverageY, minimumY, maximumY);
        rotAverageX = ClampAngle(rotAverageX, minimumX, maximumX);

        Quaternion yQuaternion = Quaternion.AngleAxis(rotAverageY, Vector3.left);
        Quaternion xQuaternion = Quaternion.AngleAxis(rotAverageX, Vector3.up);

        transform.localRotation = originalRotation * xQuaternion * yQuaternion;
    }

    public static float ClampAngle(float angle, float min, float max) {
        angle = angle % 360;
        if ((angle >= -360F) && (angle <= 360F)) {
            if (angle < -360F) {
                angle += 360F;
            }
            if (angle > 360F) {
                angle -= 360F;
            }
        }
        return Mathf.Clamp(angle, min, max);
    }

}



