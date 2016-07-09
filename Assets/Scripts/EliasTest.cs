using UnityEngine;
using System.Collections;

public class EliasTest : MonoBehaviour {

	int currentlevel = 1;
	public DemoPlayer musicPlayer;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetButtonDown("Fire1")) {

			currentlevel++;
			Debug.Log("set level "+currentlevel);
			DemoPlayer.instance.SetLevel(currentlevel,currentlevel,100,4,1,0);
			
		}
	
	}
}
