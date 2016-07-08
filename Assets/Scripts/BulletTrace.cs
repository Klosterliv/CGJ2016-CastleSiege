using UnityEngine;
using System.Collections;

public class BulletTrace : MonoBehaviour {

	Material traceMat;
	[SerializeField]
	LineRenderer trace;
	float t = -0.1f;

	// Use this for initialization
	void Start () {

		traceMat = trace.material;
	
	}
	
	// Update is called once per frame
	void Update () {

		traceMat.SetFloat("_timestamp", t);
		t+=Time.deltaTime;
	
	}
}
