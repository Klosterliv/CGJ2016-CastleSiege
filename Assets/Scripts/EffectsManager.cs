using UnityEngine;
using System.Collections;

public class EffectsManager : MonoBehaviour {

	public static EffectsManager instance;

	[SerializeField]
	GameObject bloodEffect;

	void Awake()
	{
		if (instance == null)
		{
			instance = this as EffectsManager;
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

	public void SpawnBlood(Transform parent) {
		GameObject newBlood;
		newBlood = (GameObject) Instantiate(bloodEffect, parent.position, parent.rotation);
		newBlood.transform.SetParent(parent);
	}
}
