using UnityEngine;
using System.Collections;

public class MovingWithLine : MonoBehaviour {
    public Vector3[] thePositions;
    float travelLength;
    float travelIndex = 0f;
    Vector3 currentPos, oldPos;
    Vector3 aimPos;
    //float incrementalSpeed;
	// Use this for initialization
	void Start () {
        //incrementalSpeed = 0.0f;
        currentPos = thePositions[0];
        aimPos = currentPos;
        travelLength = 0.0f;
	}
	
	// Update is called once per frame
	void FixedUpdate () {
        if (travelIndex < thePositions.Length)
        {
            aimPos = thePositions[(int)travelIndex];
            travelIndex+= 0.7f;
            //incrementalSpeed += 0.1f;
        }
	}

    void Update()
    {
        oldPos = currentPos;
        currentPos = Vector3.Lerp(currentPos, aimPos, 0.1f);
        transform.rotation = Quaternion.Lerp(transform.rotation, Quaternion.LookRotation(currentPos - oldPos), 0.11f);
        GetComponent<Rigidbody>().velocity = transform.forward;
        transform.position = currentPos;

    }
}
