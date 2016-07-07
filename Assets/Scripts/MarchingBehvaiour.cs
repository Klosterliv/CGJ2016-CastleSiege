using UnityEngine;
using System.Collections;

public class MarchingBehvaiour : MonoBehaviour {
    public Transform left, right, forward, backward;
    public float marchingDistance, strengthAttract, strengthAvoid;
    public float yRotation;
    private Rigidbody rb;
    private PanicAgentController pac;
	// Use this for initialization
	void Start () {
        rb = GetComponent<Rigidbody>();
        pac = GetComponent<PanicAgentController>();
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
            GetComponent<State>().Panic(0.0f);
            enabled = false;
        }

        if(pac.panicStrength>1.0f)
        {
            GetComponent<State>().Panic(0.0f);
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
