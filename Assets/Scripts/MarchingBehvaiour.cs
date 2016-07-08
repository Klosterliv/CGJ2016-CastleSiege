using UnityEngine;
using System.Collections;

public class MarchingBehvaiour : MonoBehaviour {
    public Transform left, right, forward, backward;
    //public Transform left, right, forward;
    public float marchingDistance, strengthAttract, strengthAvoid;
    private Rigidbody rb;
    private PanicAgentController pac;
    private bool itsBeenAWhile;

    public Transform masterPoint;
	// Use this for initialization
	void Start () {
        rb = GetComponent<Rigidbody>();
        pac = GetComponent<PanicAgentController>();
        Invoke("nowItsBeenAWhile", 3.0f);
	}

    void nowItsBeenAWhile()
    {
        itsBeenAWhile = true;
    }
	
	// Update is called once per frame
	void FixedUpdate () {
        rb.AddForce(transform.forward);

        float maxSpeed = 5.5f;
        if (rb.velocity.magnitude > maxSpeed)
        {
            rb.velocity = rb.velocity.normalized * maxSpeed;
        }

        if(masterPoint.parent.GetComponent<State>().currentState != State.aiState.marching)
        {
            rb.AddForce((masterPoint.position - transform.position) * 2.7f);
        } else
        {
            // maybe make them panic here (when the middle soldier isn't marching anymore)
        }
        
        
        //// left
        if (left != null)
        {
            checkForce(left, 0.7f);
        }
        //// right
        if (right != null)
        {
            checkForce(right, 0.7f);
        }

        //// forward
        if (forward != null)
        {
            checkForce(forward, 1.4f);
        }
        //// backward
        
        if (backward != null)
        {
            checkForce(backward, 0.2f);
        }
        
	}

    void checkForce(Transform direction, float strength)
    {
        if(direction.GetComponent<State>().currentState == State.aiState.attacking)
        {
            GetComponent<State>().Panic(0.6f);
        }
        if ((transform.position - direction.position).magnitude > marchingDistance * 3.3f)
        {
            GetComponent<State>().Panic(0.5f);
            enabled = false;
        }

        if (itsBeenAWhile==true) { 
            if (rb.velocity.magnitude < 0.08f)
            {
                pac.panicStrength += 0.06f;
            }
        }

        if (pac.panicStrength>0.4f)
        {
            GetComponent<State>().Panic(0.2f);
            enabled = false;
        }

        if ((transform.position - direction.position).magnitude > marchingDistance*2.0f)
        {
            rb.AddForce((direction.position - transform.position)* strengthAttract * strength);
            Debug.DrawRay(transform.position, (direction.position - transform.position), Color.red);
        }
        else
        {
            rb.AddForce((transform.position - direction.position)* strengthAvoid);
            //Debug.DrawRay(transform.position, ((transform.position - direction.position)), Color.blue);
        }
    }
}
