using UnityEngine;
using System.Collections;

public class EffectsManager : MonoBehaviour {

	public static EffectsManager instance;

	[SerializeField]
	GameObject bloodEffect;
	[SerializeField]
	GameObject bloodSplat;
	[SerializeField]
	LayerMask nonAgentLayer;

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
	public void SpawnBloodSplat(Transform parent) {
		GameObject newBlood;
		Ray ray = new Ray(parent.position, -Vector3.up);
		RaycastHit hit;
		if (Physics.Raycast(ray, out hit, 200, nonAgentLayer)) {
			newBlood = (GameObject) Instantiate(bloodSplat, hit.point, parent.rotation);
		}
	}
}
