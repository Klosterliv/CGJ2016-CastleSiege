using UnityEngine;
using System.Collections;

public class MusicManager : MonoBehaviour {

	public static MusicManager instance;
	int currentLevel = 1;

	void Awake() {
		if (instance == null)
		{
			instance = this as MusicManager;
			DontDestroyOnLoad(gameObject);
		}
		else
			Destroy(gameObject);
	}

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public void SetEliasLevel(int level, int stinger, bool forceChange) {

		Debug.Log("eliaslevel : "+level);
		if ( currentLevel != level ) {
			DemoPlayer.instance.SetLevel(level,level,100,stinger,0,0);
			currentLevel = level;
		}
		else if (forceChange) {
			DemoPlayer.instance.SetLevel(level,level,100,stinger,0,0);	
			currentLevel = level;
		}

	}

}
