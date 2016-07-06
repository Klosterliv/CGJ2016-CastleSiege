using UnityEngine;
using System.Collections;

public class Attraction : MonoBehaviour {
    Rigidbody rb;
    Ray lookRay;
    public float    findNeighbourDistance, 
                    mimicRotationStrength,
                    mimicMaxDistance,
                    mimicMinDistance,
                    mimicDistanceStrength;
    int loopCounter;
    public int skipValue;
    RaycastHit hitInfo;
    [SerializeField]
    LayerMask agentsLayer, deadLayer;

    float distance;
    PanicAgentController pac;
    PanicAgentController hitPac;
    Quaternion newQuat;

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
            pac = GetComponent<PanicAgentController>();
            lookRay = new Ray(transform.position, new Vector3(Random.insideUnitCircle.x, 0, Random.insideUnitCircle.y));
            if (Physics.Raycast(lookRay, out hitInfo, findNeighbourDistance, agentsLayer)) // finding something
            {
                transform.rotation = Quaternion.Lerp(transform.rotation, hitInfo.transform.rotation, mimicRotationStrength * Time.fixedDeltaTime * skipValue);

                distance = (transform.position - hitInfo.transform.position).magnitude;
                if (distance > mimicMaxDistance) // if the neighbour is far away
                {
                    rb.AddForce(lookRay.direction * mimicDistanceStrength * skipValue);
                }
                else if (distance < mimicMinDistance) // if the neighbour is too close
                {
                    rb.AddForce(-lookRay.direction * mimicDistanceStrength * skipValue);
                }

                hitPac = hitInfo.transform.GetComponent<PanicAgentController>();
                pac.panicStrength = Mathf.Lerp(pac.panicStrength, hitPac.panicStrength, 0.7f);

            } else if(Physics.Raycast(lookRay, out hitInfo, findNeighbourDistance, deadLayer, QueryTriggerInteraction.Collide)) // finding dead people
            {
                newQuat = Quaternion.LookRotation(transform.position - hitInfo.transform.position);
                transform.rotation = newQuat;
                pac.panicStrength += 1.8f;
            }
        }
	}
}
