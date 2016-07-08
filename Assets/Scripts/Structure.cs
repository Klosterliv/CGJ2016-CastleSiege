using UnityEngine;
using System.Collections;

public class Structure : MonoBehaviour {

	[SerializeField] 
	ParticleSystem damageDebrisSmoke;
	[SerializeField] 
	Transform offsetObject;

	Vector3 originalPos = new Vector3(0,0,0);
    public float life;
	[SerializeField]
	float offsetYMagnitude = 1.5f;
	[SerializeField]
	float offsetXZMagnitude = 1f;
	[SerializeField]
	float offsetLerpSpeed = 10f;
	[SerializeField]
	float maxYOffset = 1;
	Vector3 targetPos;

	bool dying = false;
	float deathcounter = 6;

	// Use this for initialization
	void Start () {

		originalPos = offsetObject.position;
		targetPos = offsetObject.position;

	}
	
	// Update is called once per frame
	void FixedUpdate () {
        if (!dying && life <= 0.0f)
        {
			Debug.LogError ("DESTROYED");
			Destroy(offsetObject.gameObject);
			Destroy(GetComponent<Collider>());
			dying = true;
        }
	}

	void Update () {
		if (dying) {
			deathcounter-=Time.deltaTime;
			if (deathcounter <= 0)
				Destroy(gameObject);
		}
		else {
			offsetObject.position = Vector3.Lerp (offsetObject.position, targetPos, Time.deltaTime*offsetLerpSpeed);
		}

	}

	public void Damage (float damage) {

		life -= damage;
		DamageOffset();

		damageDebrisSmoke.Emit((int)(damage*5));
		
	}

	void DamageOffset () {

		float lifeOffset = life*0.4f;

		float noiseX = Mathf.PerlinNoise(lifeOffset, lifeOffset) * offsetXZMagnitude;
		float noiseY = Mathf.PerlinNoise(lifeOffset+3, lifeOffset+3) * offsetYMagnitude;
		float noiseZ = Mathf.PerlinNoise(lifeOffset+9, lifeOffset+9) * offsetXZMagnitude;

		Vector3 newPos = new Vector3(noiseX-0.5f, -noiseY, noiseZ-0.5f);
		//newPos *= offsetMagnitude;
		//Debug.LogError ("DAMAGE OFFSET : "+ newPos);
		newPos+=offsetObject.position;
		if (originalPos.y - newPos.y < -maxYOffset) newPos.y = -maxYOffset; // ABS THINGY .... TODO
		targetPos = newPos;

	}
}
