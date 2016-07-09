using UnityEngine;
using System.Collections;

public class Aiming : MonoBehaviour
{
    public GameObject crosshairPrefab;
    private GameObject crosshair;
    private MovingBarrel barrel;
    RaycastHit hitInfo;
    [SerializeField]
    LayerMask landscapeLayer, agentsLayer, deadLayer;
    Trajectory trajectory;

	Vector3 forwardInitial;
	[SerializeField]
	Transform rightWheel;
	[SerializeField]
	Transform leftWheel;
	[SerializeField]
	ParticleSystem dragEffect;
	float dragTime = 0;


    // Use this for initialization
    void Start()
    {
		forwardInitial = transform.forward;
        barrel = transform.FindChild("VisualCylinder").GetComponent<MovingBarrel>();
        trajectory = transform.FindChild("Cylinder").GetComponent<Trajectory>();
        crosshair = (GameObject)Instantiate(crosshairPrefab);
        trajectory.Hide();
    }

    // Update is called once per frame
    void Update()
    {
        trajectory.DrawTrajectory(crosshair.transform.position);

        if (Input.GetMouseButton(1))
        {
            trajectory.ShowTrajectory();
        }

        if (Input.GetMouseButtonUp(1))
        {
            trajectory.Hide();
        }

        Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
        Physics.Raycast(ray, out hitInfo, 999999, landscapeLayer, QueryTriggerInteraction.Ignore);

        crosshair.transform.position = hitInfo.point;

        var aim = (new Vector3(crosshair.transform.position.x, transform.position.y, crosshair.transform.position.z) - transform.position);
        Debug.DrawRay(transform.position, aim);

        var dir = new Vector3(crosshair.transform.position.x, transform.position.y, crosshair.transform.position.z);

		//DRAGEFFECT//
		/*
		float dot = (Mathf.Abs(Vector3.Dot(dir.normalized, transform.forward)));
		if (dot < 0.01f) {
			Debug.Log("enable "+dot);
			var em = dragEffect.emission;
			em.enabled = true;
			dragTime = 1;
		}
		dragTime-=Time.deltaTime;
		if (dragTime < 0) {
			Debug.Log("disable");
			var em = dragEffect.emission;
			em.enabled = false;
		}
		*/
		//////////////

        transform.LookAt(dir);
        //print(trajectory.GetPoint(3));
        var p = trajectory.GetPoint(4);
        //  var p = trajectory.GetAverage(5);

		RotateWheels ();

        // barrel.transform.LookAt(p);
    }

    void SmoothLook(Vector3 newDirection)
    {
        var rotation = Quaternion.LookRotation(newDirection);
        transform.rotation = Quaternion.Slerp(transform.rotation, rotation, Time.deltaTime);

    }
	void RotateWheels () {
		//ROTATE WHEELS//
		float rotDot = Vector3.Dot(forwardInitial, transform.forward);
		rotDot = (rotDot+1)/2;


		//Vector3 rWhTargetRot = Vector3.Lerp(new Vector3(0,0,0),new Vector3(360,0,0), rotDot);
		Vector3 rWhTargetRot = transform.rotation.eulerAngles;
		rWhTargetRot.x = rWhTargetRot.y; rWhTargetRot.y = 0;

		Vector3 lWhTargetRot = transform.rotation.eulerAngles;
		lWhTargetRot.x = -lWhTargetRot.y; lWhTargetRot.y = 0;
		//Debug.Log(rWhTargetRot);

		rightWheel.localRotation = Quaternion.Euler(rWhTargetRot);
		leftWheel.localRotation = Quaternion.Euler(lWhTargetRot);
		//Quaternion lWhTargetRot = Quaternion.Lerp(Quaternion.Euler(0,0,0),Quaternion.Euler(-180,0,0), rotDot);			

		//rightWheel.rotation = Quaternion.Slerp(rightWheel.rotation, rWhTargetRot, Time.deltaTime*5);
		//leftWheel.rotation = Quaternion.Slerp(leftWheel.rotation, lWhTargetRot, Time.deltaTime*5);

		//Quaternion rWheelNewRot = rightWheel.rotation;
		//rWheelNewRot.z = Quaternion.Slerp(rightWheel.rotation, rWhTargetRot, Time.deltaTime*5).z;
		//rightWheel.rotation = rWheelNewRot;
	}
}
