using UnityEngine;
using System.Collections;

public class State : MonoBehaviour
{

    public delegate void Panicked();
    public static event Panicked panickedEvent;
    private ForwardMovement forwardMovement;
    private SpringJoint springJoint;

    public bool panicing = false;

    void OnEnable()
    {
        State.panickedEvent += Panic;
    }

    // Use this for initialization
    void Start()
    {
        forwardMovement = GetComponent<ForwardMovement>();
        springJoint = GetComponent<SpringJoint>();
    }

    // Update is called once per frame
    void Update()
    {

   
    }

    public void Panic()
    {
        print("panic!");
        forwardMovement.marching = false;
        springJoint.connectedBody = null;
        panicing = true;

    }
}
