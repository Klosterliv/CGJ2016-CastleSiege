using UnityEngine;
using System.Collections;

public class AgentAnimations : MonoBehaviour {

	[SerializeField]
	AnimationCurve hopAnimation;
	[SerializeField]
	PanicAgentController panicAgentController;
	float hopTimeOffset = 0;
	[SerializeField] 
	float hopSpeed;

	Rigidbody rbody;
	float velocity;

	// Use this for initialization
	void Start () {
		rbody = (Rigidbody)transform.parent.GetComponent(typeof(Rigidbody));
	}
	
	// Update is called once per frame
	void Update () {

		Hopping ();
	
	}

	void Hopping () {

		hopTimeOffset += Time.deltaTime
			*hopSpeed
			*(panicAgentController.panicStrength*0.3f+1)
			*velocity;
		

		//Vector3.up * hopAnimation.Evaluate(hopTimeOffset)

		Vector3 newPos = new Vector3(transform.parent.position.x, transform.parent.position.y + 
			hopAnimation.Evaluate(hopTimeOffset)*(panicAgentController.panicStrength*0.1f+1), 
			transform.parent.position.z);

		transform.position = newPos;



	}

	void FixedUpdate () {
		velocity = rbody.velocity.magnitude;
	}
}
