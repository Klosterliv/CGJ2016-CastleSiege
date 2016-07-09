using UnityEngine;
using System.Collections;

public class timeManager : MonoBehaviour {
    public float timeAim;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        Time.timeScale = Mathf.Lerp(Time.timeScale, timeAim, 1.0f * Time.deltaTime);
        timeAim = Mathf.Lerp(timeAim, 1.0f, 1.8f * Time.deltaTime);
        //Time.timeScale = Mathf.SmoothStep(Time.timeScale, 1.0f, 0.6f*Time.deltaTime);
	}
}
