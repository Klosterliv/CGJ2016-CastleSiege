using UnityEngine;
using System.Collections;

public class randomizeChildren : MonoBehaviour {

	// Use this for initialization
	void Start () {
	    for(int i = 0; i<transform.childCount; i++)
        {
            transform.GetChild(i).Rotate(0, 0, Random.Range(-180f, 180f));
            transform.GetChild(i).localScale *= Random.Range(0.9f, 1.1f);
        }
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
