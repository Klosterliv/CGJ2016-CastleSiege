using UnityEngine;
using System.Collections;

public class ProjectileTrailEffect : MonoBehaviour {

	public Transform projectile;
	Rigidbody projectileRigid;
	Vector3 projectileV;
	bool dying = false;
	float deathtimer = 6f;

	void Start() {
		projectileRigid = (Rigidbody)projectile.GetComponent(typeof(Rigidbody));
		projectileV = new Vector3(0,0,0);
	}

	// Update is called once per frame
	void Update () {

		if (dying) {
			if (deathtimer <= 0) {
				Destroy(gameObject);
			}
			else deathtimer-=Time.deltaTime;
		}
		else Follow();
	}

	void Follow() {
		if (projectile != null) {
			transform.position = Vector3.Lerp(transform.position, projectile.position, Time.deltaTime*50*Vector3.Distance(transform.position, projectile.position));
			projectileV = projectileRigid.velocity;
		}			
		else {
			Rigidbody rigid = (Rigidbody) GetComponent(typeof(Rigidbody));
			//rigid.useGravity = true;
			//rigid.velocity = projectileV;
			dying = true;
		}
	}
}
