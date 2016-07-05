using UnityEngine;
using System.Collections;

public class randomizeChildren : MonoBehaviour {

	// Use this for initialization
	void Start () {
	    for(int i= 0; i<transform.childCount; i++)
        {
            transform.GetChild(i).GetComponent<ForwardMovement>().noiseOffset = Random.Range(0.0f, 1000.0f);
        }
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
