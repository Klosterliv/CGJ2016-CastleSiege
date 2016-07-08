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

    public bool alive;
    public enum aiState { marching, panicking, dead, attacking };
    public aiState currentState;
    //public bool panicking = false;

    // Use this for initialization
    void Start()
    {
        forwardMovement = GetComponent<ForwardMovement>();
        attraction = GetComponent<Attraction>();
        marchingBehaviour = GetComponent<MarchingBehvaiour>();
        turnTowardsCastle = GetComponent<TurnTowardsCastle>();
        pac = GetComponent<PanicAgentController>();
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
        currentState = aiState.dead;
        alive = false;
        GetComponent<Rigidbody>().constraints = RigidbodyConstraints.None;
        attraction.enabled = false;
        forwardMovement.enabled = false;
        turnTowardsCastle.enabled = false;

        gameObject.layer = 10;

        EffectsManager.instance.SpawnBlood(transform);
        EffectsManager.instance.SpawnBloodSplat(transform);
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
    
    public void attack( Structure attackMe )
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
