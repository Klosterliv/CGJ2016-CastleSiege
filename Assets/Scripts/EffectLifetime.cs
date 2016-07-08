using UnityEngine;
using System.Collections;

public class EffectLifetime : MonoBehaviour {

	[SerializeField]
	float lifetime;

	// Update is called once per frame
	void Update () {

		if (lifetime <= 0)
			Destroy(gameObject);

		lifetime-=Time.deltaTime;
	
	}
}
