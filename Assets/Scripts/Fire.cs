using UnityEngine;
using System.Collections;
using System;

public class Fire : MonoBehaviour
{

    public GameObject projectilePrefab;
    RaycastHit hitInfo;
    [SerializeField]
    LayerMask landscapeLayer, agentsLayer, deadLayer;


    private GameObject crosshair;

    // Use this for initialization
    void Start()
    {
    }

    // Update is called once per frame
    void Update()
    {
        //print(hitInfo.point);
        if (Input.GetMouseButtonDown(0))
        {
            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            Physics.Raycast(ray, out hitInfo, landscapeLayer);
            FireProjectile(hitInfo.point);
        }
    }

    public float angle = 45;
    public float force = 10;

    private void FireProjectile(Vector3 target)
    {

        var distance = Vector3.Distance(target, transform.position);
        var aim = (new Vector3(target.x, 0, target.z) - transform.position).normalized;
        var proj = (GameObject)Instantiate(projectilePrefab, transform.position, new Quaternion());
        Debug.DrawRay(transform.position, -transform.up * 10, Color.red);

        proj.GetComponent<Rigidbody>().AddForce(-transform.up * calculateForce(distance), ForceMode.Impulse);
    }

    

    private float calculateForce(float distance)
    {
        var g = 45f;
        var sinOf45 = 0.85090352453f;
        var cosOf45 = 0.52532198881f;

        var v = distance * g / 2 * sinOf45 * cosOf45;

        return Mathf.Sqrt(v);
    }
}
