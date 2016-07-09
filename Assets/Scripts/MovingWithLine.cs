using UnityEngine;
using System.Collections;

public class MovingWithLine : MonoBehaviour {
    public Vector3[] thePositions;
    float travelLength;
    int travelIndex = 0;
    Vector3 currentPos, oldPos;
    Vector3 aimPos;
	// Use this for initialization
	void Start () {
        currentPos = thePositions[0];
        aimPos = currentPos;
        travelLength = 0.0f;
	}
	
	// Update is called once per frame
	void FixedUpdate () {
        if (travelIndex < thePositions.Length)
        {
            aimPos = thePositions[travelIndex];
            travelIndex++;
        }
	}

    void Update()
    {
        oldPos = currentPos;
        currentPos = Vector3.Lerp(currentPos, aimPos, 0.3f);
        transform.rotation = Quaternion.LookRotation(currentPos - oldPos);
        transform.position = currentPos;

    }
}
