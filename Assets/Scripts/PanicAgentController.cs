using UnityEngine;
using System.Collections;

public class PanicAgentController : MonoBehaviour {
    //[HideInInspector]
    public float panicStrength;
	// Use this for initialization
	void Start () {
        //panicStrength = 1.0f;
	}
	
	// Update is called once per frame
	void FixedUpdate () {
        panicStrength = Mathf.Min(panicStrength, 3.0f);
        panicStrength *= 0.9457f;
	}
}
