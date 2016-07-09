using UnityEngine;
using System.Collections;

public class killOnTrigger : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Agent")
        {
            other.GetComponent<State>().kill();
        }
    }
}
