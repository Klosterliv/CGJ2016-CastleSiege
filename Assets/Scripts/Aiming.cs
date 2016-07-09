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
    // Use this for initialization
    void Start()
    {
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

        transform.LookAt(dir);
        //print(trajectory.GetPoint(3));
        //var p = trajectory.GetPoint(4);
        //  var p = trajectory.GetAverage(5);

        // barrel.transform.LookAt(p);
    }

    void SmoothLook(Vector3 newDirection)
    {
        var rotation = Quaternion.LookRotation(newDirection);
        transform.rotation = Quaternion.Slerp(transform.rotation, rotation, Time.deltaTime);
    }
}
