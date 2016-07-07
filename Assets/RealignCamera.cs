using UnityEngine;
using System.Collections;

public class RealignCamera : MonoBehaviour
{

    Rigidbody rb;

    // Use this for initialization
    void Start()
    {
        rb = transform.parent.GetComponent<Rigidbody>();

      //  transform.Translate(transform.up * 10);
      //  transform.Translate(-transform.forward * 10);
        // shellCam.transform.Translate(Vector3.right * 20);
        transform.LookAt(transform.position);
        //  shellCam.gameObject.SetActive(true);
    }

    // Update is called once per frame
    void Update()
    {
        transform.rotation = Quaternion.Lerp(transform.rotation, Quaternion.LookRotation(rb.velocity), 0.1f);
        //transform.LookAt(transform.position + rb.velocity);
        //transform.localRotation *= Quaternion.Euler(90.0f, 0, 0);
    }
}
