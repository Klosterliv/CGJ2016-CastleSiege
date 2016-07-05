using UnityEngine;
using System.Collections;

public class ForwardMovement : MonoBehaviour {
    Rigidbody rb;
    public float force;
	// Use this for initialization
	void Start () {
        rb = GetComponent<Rigidbody>();
	}
	
	// Update is called once per frame
	void FixedUpdate () {
        rb.AddForce(transform.forward*force*Mathf.PerlinNoise(Time.time,0.0f));
	}
}
