using UnityEngine;
using System.Collections;

public class Structure : MonoBehaviour {
    public float life;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void FixedUpdate () {
        if (life <= 0.0f)
        {
            Destroy(gameObject);
        }
	}
}
