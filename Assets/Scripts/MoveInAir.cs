using UnityEngine;
using System.Collections;

public class MoveInAir : MonoBehaviour
{
    Rigidbody rb;
    // Use this for initialization
    void Start()
    {
        rb = transform.parent.GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    void Update()
    {

        transform.LookAt(transform.position + rb.velocity);
        transform.localRotation *= Quaternion.Euler(90.0f, 0, 0);
    }
}
