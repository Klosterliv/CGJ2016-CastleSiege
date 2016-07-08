using UnityEngine;
using System.Collections;

public class AgentAnimations : MonoBehaviour {

	[SerializeField]
	Transform riflePivot;
	[SerializeField]
	Transform rifleMuzzle;
	[SerializeField]
	LayerMask shootTargetMask;

	[SerializeField]
	AnimationCurve hopAnimation;
	[SerializeField]
	PanicAgentController panicAgentController;
	float hopTimeOffset = 0;
	[SerializeField] 
	float hopSpeed;
	[SerializeField] 
	State state;
	[SerializeField]
	Transform helmet;
	Vector3 helmetOffset;

	Rigidbody rbody;
	float velocity;
	float shootTimer = 2f;

	// Use this for initialization
	void Start () {
		rbody = (Rigidbody)transform.parent.GetComponent(typeof(Rigidbody));
		helmetOffset = transform.position-helmet.position;
	}
	
	// Update is called once per frame
	void Update () {

		if (state.alive) {

			Hopping ();
			AimOrShoulder();

			shootTimer-=Time.deltaTime;
		}

	
	}

	void Hopping () {

		hopTimeOffset += Time.deltaTime
			*hopSpeed
			//*(panicAgentController.panicStrength*0.3f+1)
			//*(velocity+1);
			*Mathf.Max(velocity, panicAgentController.panicStrength*3f);		

		//Vector3.up * hopAnimation.Evaluate(hopTimeOffset)
        
		Vector3 newPos = new Vector3(transform.parent.position.x, transform.parent.position.y + 
			hopAnimation.Evaluate(hopTimeOffset)*(panicAgentController.panicStrength*0.1f+1), 
			transform.parent.position.z);
        
        transform.position = newPos;

        //transform.position = (hopAnimation.Evaluate(hopTimeOffset) * (panicAgentController.panicStrength * 0.1f + 1)) * Vector3.up + transform.position;

		if (helmet.position.y < newPos.y+helmetOffset.y)
			helmet.position = newPos+helmetOffset;
		else
			helmet.position = Vector3.Lerp(helmet.position, newPos+helmetOffset, Time.deltaTime*5);



    }

	void AimOrShoulder() {
		if (state.currentState == State.aiState.attacking) {

			riflePivot.localRotation = Quaternion.Lerp(riflePivot.localRotation, Quaternion.Euler(112, 0, -10), Time.deltaTime*10);

			if(shootTimer <= 0)
				Fire();
						
		}
		else {
			riflePivot.localRotation = Quaternion.Lerp(riflePivot.localRotation, Quaternion.Euler(0, 0, 0), Time.deltaTime*10);		
		}
	}
	void Fire() {
		Vector3 randAim = Random.onUnitSphere*16f;
		Vector3 fireDir = (rifleMuzzle.position-riflePivot.position).normalized*60+randAim;
		Debug.DrawRay(rifleMuzzle.position, fireDir, Color.red, 0.5f);
		RaycastHit hit;

		if (Physics.Raycast(rifleMuzzle.position, fireDir, out hit, fireDir.magnitude, shootTargetMask, QueryTriggerInteraction.Ignore)) {
			Debug.Log("hit");
			if (hit.collider.tag != "Agent") {
				// FIRE WEAPON //
				Vector3 fireVector = hit.point-rifleMuzzle.position;
				Gunfire (fireVector);
				Debug.LogError("FIRE AT "+ hit.collider.gameObject.name);
				shootTimer += 5f;
			}
			else if (Random.Range(0f, 1f) > 0.7f) {
				// FIRE WEAPON //
				Vector3 fireVector = hit.point-rifleMuzzle.position;
				Gunfire (fireVector);
				Debug.LogError("FIRERNG");
				shootTimer += 5f;
			}
			else shootTimer += 2f;
		}
		
	}
	void Gunfire (Vector3 fireVector) {
		
		EffectsManager.instance.SpawnMuzzleFlash(rifleMuzzle);
		EffectsManager.instance.SpawnBulletTrace(rifleMuzzle.position, fireVector);

	}


	void FixedUpdate () {
		velocity = rbody.velocity.magnitude;
	}
}
