using UnityEngine;
using System.Collections;

public class MoveInAir : MonoBehaviour
{
    Rigidbody rb;
    // Use this for initialization
    void Start()
    {
        rb = transform.parent.GetComponent<Rigidbody>();

        transform.LookAt(transform.position + rb.velocity);
        //transform.localRotation *= Quaternion.Euler(90.0f, 0, 0);
    }

    // Update is called once per frame
    void Update()
    {

        transform.rotation = Quaternion.Lerp(transform.rotation, Quaternion.LookRotation(rb.velocity) * Quaternion.Euler(90.0f, 0, 0), 0.1f);

        //transform.LookAt(transform.position + rb.velocity);
        //  transform.localRotation *= Quaternion.Euler(90.0f, 0, 0);
    }
}
