using UnityEngine;
using System.Collections;

public class ChangeWaypoint : MonoBehaviour {
    public Transform newWaypoint;
    void OnTriggerEnter(Collider other)
    {
        if (newWaypoint != null) {
            if (other.tag == "Agent")
            {
                other.GetComponent<TurnTowardsCastle>().castlePoint = newWaypoint.position;
            }
        }
    }
}
