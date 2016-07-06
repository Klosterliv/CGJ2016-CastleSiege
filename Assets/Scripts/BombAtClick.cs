using UnityEngine;
using System.Collections;
using System;

public class BombAtClick : MonoBehaviour
{
    public GameObject theInstance;
    public float explosionRadius,
                    explosionForce;

    public float shotForceModified = 4.5f;
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

    private void BombPosition(Vector3 target)
    {

        Collider[] hitColliders = Physics.OverlapSphere(target, explosionRadius, (agentsLayer + deadLayer));
        int i = 0;
        while (i < hitColliders.Length)
        {
            Rigidbody rb = hitColliders[i].GetComponent<Rigidbody>();
            Attraction a = hitColliders[i].GetComponent<Attraction>();
            PanicAgentController p = hitColliders[i].GetComponent<PanicAgentController>();
            GameObject g = hitColliders[i].gameObject;

            ForwardMovement f = hitColliders[i].GetComponent<ForwardMovement>();
            rb.AddExplosionForce(explosionForce, hitInfo.point + Vector3.down * 0.2f * explosionRadius, explosionRadius * 2.5f);
            rb.constraints = RigidbodyConstraints.None;

            a.enabled = false;
            f.enabled = false;
            g.layer = 10;
            //    p.panicStrength += 10.0f;
            i++;
        }

    }

    private void AngleGun(float angle)
    {
        if (angle > 90)
        {
            throw new Exception("Angle can not be 90");
        }

        transform.localRotation = Quaternion.Euler(angle + 90, 180, 0);
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
