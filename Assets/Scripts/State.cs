using UnityEngine;
using System.Collections;

public class State : MonoBehaviour
{

    public delegate void Panicked();
    public static event Panicked panickedEvent;
    private ForwardMovement forwardMovement;
    //private SpringJoint springJoint;
    private Attraction attraction;
    private MarchingBehvaiour marchingBehaviour;

    public bool alive;
    public bool panicking = false;

    // Use this for initialization
    void Start()
    {
        forwardMovement = GetComponent<ForwardMovement>();
        //springJoint = GetComponent<SpringJoint>();
        attraction = GetComponent<Attraction>();
        marchingBehaviour = GetComponent<MarchingBehvaiour>();

        //Panic();
    }

    // Update is called once per frame
    void Update()
    {

        //if (Time.unscaledTime > 3 && !panicking)
        //{
        //    Panic();
        //}

    }

    public void kill()
    {
        //Debug.Log("killed!");
        alive = false;
        GetComponent<Rigidbody>().constraints = RigidbodyConstraints.None;

        GetComponent<Attraction>().enabled = false;

        GetComponent<ForwardMovement>().enabled = false;
        gameObject.layer = 10;

        EffectsManager.instance.SpawnBlood(transform);
        EffectsManager.instance.SpawnBloodSplat(transform);
    }

    public void Panic()
    {
        if (alive)
        {
            //print("panic!");
            forwardMovement.marching = false;
            marchingBehaviour.enabled = false;
            //springJoint.connectedBody = null;
            //springJoint.spring = 0.0f;
            panicking = true;
            attraction.enabled = true;
        }
    }
}
