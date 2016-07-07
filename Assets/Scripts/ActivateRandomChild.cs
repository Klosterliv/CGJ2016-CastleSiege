using UnityEngine;
using System.Collections;

public class ActivateRandomChild : MonoBehaviour {

	// Use this for initialization
	void Start () {
        transform.GetChild(Random.Range(0, transform.childCount)).gameObject.active = true;
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
