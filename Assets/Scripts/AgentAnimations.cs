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
	[SerializeField] 
	State state;

	Rigidbody rbody;
	float velocity;

	// Use this for initialization
	void Start () {
		rbody = (Rigidbody)transform.parent.GetComponent(typeof(Rigidbody));
	}
	
	// Update is called once per frame
	void Update () {

		if (state.alive)
		Hopping ();
	
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




    }

	void FixedUpdate () {
		velocity = rbody.velocity.magnitude;
	}
}
