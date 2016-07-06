using UnityEngine;
using System.Collections;

public class MarchingBehvaiour : MonoBehaviour {
    public Transform left, right, forward, backward;
    public float marchingDistance, strengthAttract, strengthAvoid;
    public float yRotation;
    Rigidbody rb;
	// Use this for initialization
	void Start () {
        rb = GetComponent<Rigidbody>();
	}
	
	// Update is called once per frame
	void FixedUpdate () {
        transform.rotation = Quaternion.Euler(0, yRotation, 0);
        //// left
        if (left != null)
        {
            checkForce(left);
        }
        //// right
        if (right != null)
        {
            checkForce(right);
        }

        //// forward
        if (forward != null)
        {
            checkForce(forward);
        }
        //// backward
        if (backward != null)
        {
            checkForce(backward);
        }
	}

    void checkForce(Transform direction)
    {
        yRotation = Mathf.Lerp(yRotation, direction.GetComponent<MarchingBehvaiour>().yRotation, 0.4f);
        if ((transform.position - direction.position).magnitude > marchingDistance * 2.8f)
        {
            GetComponent<State>().Panic();
            enabled = false;
        }

        if ((transform.position - direction.position).magnitude > marchingDistance*2.0f)
        {
            rb.AddForce((direction.position - transform.position)* strengthAttract);
            Debug.DrawRay(transform.position, (direction.position - transform.position), Color.red);
        }
        else
        {
            rb.AddForce((transform.position - direction.position)* strengthAvoid);
            Debug.DrawRay(transform.position, ((transform.position - direction.position)), Color.blue);
        }
    }
}
