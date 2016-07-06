using UnityEngine;
using System.Collections;

public class Fire : MonoBehaviour
{

    public GameObject projectilePrefab;


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

    private void AngleGun(float angle)
    {
        if (angle > 90)
        {
            throw new Exception("Angle can not be 90");
=======
            if (Physics.Raycast(ray, out hitInfo, landscapeLayer))
            {

                Collider[] hitColliders = Physics.OverlapSphere(hitInfo.point, explosionRadius * 4.2f, (agentsLayer));
                int i = 0;
                while (i < hitColliders.Length)
                {
                    Quaternion newQuat = Quaternion.LookRotation(hitColliders[i].transform.position - hitInfo.point);
                    hitColliders[i].transform.rotation = newQuat;


                    PanicAgentController p = hitColliders[i].GetComponent<PanicAgentController>();
                    p.panicStrength += 3.0f;
                    i++;
                }

                hitColliders = Physics.OverlapSphere(hitInfo.point, explosionRadius, (agentsLayer + deadLayer));

                Time.timeScale *= 1.0f / hitColliders.Length;

                i = 0;
                while (i < hitColliders.Length)
                {

                    Rigidbody rb = hitColliders[i].GetComponent<Rigidbody>();
                    Attraction a = hitColliders[i].GetComponent<Attraction>();
                    State s = hitColliders[i].GetComponent<State>();
                    GameObject g = hitColliders[i].gameObject;

                    s.alive = false; // you are now dead

                    ForwardMovement f = hitColliders[i].GetComponent<ForwardMovement>();
                    rb.constraints = RigidbodyConstraints.None;
                    rb.AddExplosionForce(explosionForce, hitInfo.point + Vector3.down * 0.2f * explosionRadius, explosionRadius * 2.5f);
                    //rb.AddTorque(Random.insideUnitSphere.normalized * 1000000.0f );
                    //rb.AddTorque(Vector3.left*100.0f);


                    a.enabled = false;
                    f.enabled = false;
                    g.layer = 10;

                    EffectsManager.instance.SpawnBlood(g.transform); // trails + splatter from trail
                    EffectsManager.instance.SpawnBloodSplat(g.transform); // groundsplatter


                    i++;
                }
                EffectsManager.instance.SpawnExplosion(hitInfo.point);
                //Instantiate(theInstance, hitInfo.point, Quaternion.identity);
            }
>>>>>>> 20007241b2f5c97a9a4ee844496beaf81cea9386
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
