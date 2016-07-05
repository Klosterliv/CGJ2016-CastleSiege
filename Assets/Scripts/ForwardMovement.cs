using UnityEngine;
using System.Collections;

public class ForwardMovement : MonoBehaviour {
    Rigidbody rb;
    public float    force,
                    noiseOffset;

    int loopCounter;
    public int skipValue;

    // Use this for initialization
    void Start () {
        loopCounter = Random.Range(0, skipValue);
        rb = GetComponent<Rigidbody>();
	}
	
	// Update is called once per frame
	void FixedUpdate () {
        loopCounter++;
        if (loopCounter >= skipValue)
        {
            loopCounter = 0;
            rb.AddForce(transform.forward * force * Mathf.PerlinNoise(Time.time, noiseOffset) * skipValue + Vector3.up * skipValue);
            //rb.AddForce(transform.forward * force * skipValue + Vector3.up * skipValue);
        }
    }
}
