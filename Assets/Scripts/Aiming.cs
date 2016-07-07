using UnityEngine;
using System.Collections;

public class Aiming : MonoBehaviour
{
    public GameObject crosshairPrefab;
    private GameObject crosshair;
    RaycastHit hitInfo;
    [SerializeField]
    LayerMask landscapeLayer, agentsLayer, deadLayer;
    Trajectory trajectory;
    // Use this for initialization
    void Start()
    {
        trajectory = GetComponent<Trajectory>();
        crosshair = (GameObject)Instantiate(crosshairPrefab);
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetMouseButton(1))
        {
            trajectory.DrawTrajectory(crosshair.transform.position);
        }

        if (Input.GetMouseButtonUp(1))
        {
            trajectory.Clear();
        }

        Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
        Physics.Raycast(ray, out hitInfo, landscapeLayer);

        crosshair.transform.position = hitInfo.point;

        var aim = (new Vector3(crosshair.transform.position.x, transform.position.y, crosshair.transform.position.z) - transform.position);
        Debug.DrawRay(transform.position, aim);

        var dir = new Vector3(crosshair.transform.position.x, transform.position.y, crosshair.transform.position.z);

        SmoothLook(aim);
    }

    void SmoothLook(Vector3 newDirection)
    {
        var rotation = Quaternion.LookRotation(newDirection);
        transform.rotation = Quaternion.Slerp(transform.rotation, rotation, Time.deltaTime);
    }
}
