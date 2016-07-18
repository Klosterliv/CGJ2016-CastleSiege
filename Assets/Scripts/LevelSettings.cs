using UnityEngine;
using System.Collections;

public class LevelSettings : MonoBehaviour {

	public int killsToWin = 0;
	public float buildingDmgToLose = 0;
	public GameObject endGameState;

	// Use this for initialization
	void Start () {
		GameManager.instance.NewLevel(this);	
	}

}
