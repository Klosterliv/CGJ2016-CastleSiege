using UnityEngine;
using System.Collections;

public class State : MonoBehaviour
{

    public delegate void Panicked();
    public static event Panicked panickedEvent;
    private ForwardMovement forwardMovement;
    //private SpringJoint springJoint;
    private Attraction attraction;
    private TurnTowardsCastle turnTowardsCastle;
    private MarchingBehvaiour marchingBehaviour;
    private PanicAgentController pac;

    bool isBleeding;

    public bool alive;
    public enum aiState { marching, panicking, dead, attacking };
    public aiState currentState;
	[SerializeField]
	LayerMask structure;
    //public bool panicking = false;

    // Use this for initialization
    void Start()
    {
        isBleeding = false;
        forwardMovement = GetComponent<ForwardMovement>();
        attraction = GetComponent<Attraction>();
        marchingBehaviour = GetComponent<MarchingBehvaiour>();
        turnTowardsCastle = GetComponent<TurnTowardsCastle>();
        pac = GetComponent<PanicAgentController>();
    }

	void FixedUpdate(){
		if(currentState==aiState.attacking){
			if(Physics.CheckSphere(transform.position,1.0f, structure, QueryTriggerInteraction.Collide)){
				if(Random.value>0.94f){
					forwardMovement.enabled = true;
				}
			} else {
				Panic(0.0f);
			}
		}
	}

    public void marching()
    {
        if (alive)
        {
            currentState = aiState.marching;
            forwardMovement.enabled = true;
            attraction.enabled = false;
            marchingBehaviour.enabled = true;
        }
    }

    public void kill()
    {
		if (currentState != aiState.dead) GameManager.instance.AddDead();

        currentState = aiState.dead;
        alive = false;
        GetComponent<Rigidbody>().constraints = RigidbodyConstraints.None;
        attraction.enabled = false;
        forwardMovement.enabled = false;
        turnTowardsCastle.enabled = false;

        gameObject.layer = 10;

        if (isBleeding == false)
        {
            EffectsManager.instance.SpawnBlood(transform);
            EffectsManager.instance.SpawnBloodSplat(transform);
            isBleeding = true;
            Invoke("resetBleeding", 2);
        }
        
    }

    void resetBleeding()
    {
        isBleeding = false;
    }

    public void Panic(float addPanicAmount)
    {
        if (alive)
        {
            currentState = aiState.panicking;
            forwardMovement.enabled = true;
            forwardMovement.marching = false;
            attraction.enabled = true;
            marchingBehaviour.enabled = false;
            pac.panicStrength += addPanicAmount;
        }
    }
    
    public void attack(  )
    {
        if (alive)
        {
            turnTowardsCastle.enabled = false;
            currentState = aiState.attacking;
            forwardMovement.enabled = false;
            attraction.enabled = false;
            marchingBehaviour.enabled = false;
        }
    }
}
