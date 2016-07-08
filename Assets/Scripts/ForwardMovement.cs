using UnityEngine;
using System.Collections;

public class ForwardMovement : MonoBehaviour
{
    public bool marching = true;

    int loopCounter;
    public int skipValue;

    Rigidbody rb;
    public float force;
    float noiseOffset;
    // Use this for initialization

    void Start()
    {
        //loopCounter = Random.Range(0, skipValue);
        noiseOffset = Random.Range(0.0f, 1000.0f);
        rb = GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        if (marching)
            March();
        else
            RunInPanic();
    }

    void March()
    {
        rb.AddForce(transform.forward * force * 1.2f);
    }

    void RunInPanic()
    {
        loopCounter++;
        if (loopCounter >= skipValue)
        {
            loopCounter = 0;
            float panicStrength = GetComponent<PanicAgentController>().panicStrength;
            //rb.AddForce(transform.forward * panicStrength * force * Mathf.PerlinNoise(Time.time, noiseOffset) * skipValue + Vector3.up * skipValue);
            rb.AddForce(transform.forward * Mathf.Max(panicStrength,0.9f) * force * skipValue + Vector3.up * skipValue);
            //rb.AddForce(transform.forward * force * 4 * Mathf.PerlinNoise(Time.time, 0.0f));
        }
    }

    //public float    force,
    //                    noiseOffset;

    //    int loopCounter;
    //    public int skipValue;

    //    // Use this for initialization
    //    void Start () {
    //        loopCounter = Random.Range(0, skipValue);
    //        rb = GetComponent<Rigidbody>();
    //	}

    //	// Update is called once per frame
    //	void FixedUpdate () {
    //        loopCounter++;
    //        if (loopCounter >= skipValue)
    //        {
    //            loopCounter = 0;
    //            rb.AddForce(transform.forward * force * Mathf.PerlinNoise(Time.time, noiseOffset) * skipValue + Vector3.up * skipValue);
    //            //rb.AddForce(transform.forward * force * skipValue + Vector3.up * skipValue);
    //        }
    //    }
}
