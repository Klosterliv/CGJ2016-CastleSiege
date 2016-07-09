using UnityEngine;
using System.Collections;

public class LightFadeCurve : MonoBehaviour {

	[SerializeField]
	Light light;
	[SerializeField]
	AnimationCurve fadeCurve;

	float t = 0;


	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {

		t+=Time.deltaTime;
		light.intensity = fadeCurve.Evaluate(t);
	
	}
}
