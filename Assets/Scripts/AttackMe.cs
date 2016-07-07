using UnityEngine;
using System.Collections;

public class AttackMe : MonoBehaviour {

    void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Agent")
        {
            other.GetComponent<State>().attack(transform.parent.GetComponent<Structure>());
        }
    }
}
