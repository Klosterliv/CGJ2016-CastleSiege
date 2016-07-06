using UnityEngine;
using System.Collections;

public class Aiming : MonoBehaviour
{
    public GameObject crosshairPrefab;
    private GameObject crosshair;
    RaycastHit hitInfo;
    [SerializeField]
    LayerMask landscapeLayer, agentsLayer, deadLayer;
    // Use this for initialization
    void Start()
    {
        crosshair = (GameObject)Instantiate(crosshairPrefab);
    }

    // Update is called once per frame
    void Update()
    {
        Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
        Physics.Raycast(ray, out hitInfo, landscapeLayer);

        crosshair.transform.position = hitInfo.point;

        var aim = (new Vector3(crosshair.transform.position.x, transform.position.y, crosshair.transform.position.z) - transform.position);
        Debug.DrawRay(transform.position, aim);

        transform.LookAt(new Vector3(crosshair.transform.position.x, transform.position.y, crosshair.transform.position.z));
    }
}
