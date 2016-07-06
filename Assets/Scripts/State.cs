using UnityEngine;
using System.Collections;

public class State : MonoBehaviour
{

    public delegate void Panicked();
    public static event Panicked panickedEvent;
    private ForwardMovement forwardMovement;
    private SpringJoint springJoint;
    private Attraction attraction;

    public bool panicing = false;

    // Use this for initialization
    void Start()
    {
        forwardMovement = GetComponent<ForwardMovement>();
        springJoint = GetComponent<SpringJoint>();
        attraction = GetComponent<Attraction>();
    }

    // Update is called once per frame
    void Update()
    {

        //if (Time.unscaledTime > 3 && !panicing)
        //{
        //    Panic();
        //}

    }

    public void Panic()
    {

        print("panic!");
        forwardMovement.marching = false;
        springJoint.connectedBody = null;
        panicing = true;
        attraction.enabled = true;
        
    }
}
