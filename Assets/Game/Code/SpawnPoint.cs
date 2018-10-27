using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpawnPoint : MonoBehaviour {

    public float spawnTestRange;

    void Start()
    {
        
    }


    public static Transform FindSpawnLocation() {
        GameObject[] spawnPoints = GameObject.FindGameObjectsWithTag("SpawnPoint");
        int leastPlayers = 10000;
        GameObject bestSpawn = spawnPoints[0];
        foreach (GameObject spawn in spawnPoints) {
            int playersNearby = spawn.GetComponent<SpawnPoint>().CheckSpawn();
            if (playersNearby < leastPlayers) {
                bestSpawn = spawn;
                leastPlayers = playersNearby;
            }
        }
        Debug.LogFormat("Found {0} with {1} players near it", bestSpawn.name, leastPlayers);

        return bestSpawn.transform;
    }

    public int CheckSpawn() {
        GameObject[] players = GameObject.FindGameObjectsWithTag("Player");
        int playerCount = 0;
        foreach(GameObject player in players) {
            float playerDistance = Vector3.Distance(player.transform.position, transform.position);
            if (playerDistance < spawnTestRange) {
                playerCount++;
            }
        }
        return playerCount;
    }
}
