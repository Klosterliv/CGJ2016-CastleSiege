using UnityEngine;
using System.Collections;

public class timeManager : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        Time.timeScale = Mathf.SmoothStep(Time.timeScale, 2.0f, 0.06f);
	}
}
