using UnityEngine;
using System.Collections;

public class ForwardMovement : MonoBehaviour
{
    public bool marching = true;

    Rigidbody rb;
    public float force;
    // Use this for initialization

    void Start()
    {
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
        rb.AddForce(transform.forward * force);
    }

    void RunInPanic()
    {
        rb.AddForce(transform.forward * force * 4 * Mathf.PerlinNoise(Time.time, 0.0f));
    }

}
