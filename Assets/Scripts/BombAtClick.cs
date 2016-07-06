using UnityEngine;
using System.Collections;

public class BombAtClick : MonoBehaviour {
    public GameObject theInstance;
    public float    explosionRadius,
                    explosionForce;
    RaycastHit hitInfo;
    [SerializeField]
    LayerMask landscapeLayer, agentsLayer, deadLayer;
    
    // Use this for initialization
    void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        if (Input.GetMouseButtonDown(0))
        {
            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            if (Physics.Raycast(ray, out hitInfo, landscapeLayer)) {

                Collider[] hitColliders = Physics.OverlapSphere(hitInfo.point, explosionRadius*4.2f, (agentsLayer));
                int i = 0;
                while (i < hitColliders.Length)
                {
                    Quaternion newQuat = Quaternion.LookRotation(hitColliders[i].transform.position - hitInfo.point);
                    hitColliders[i].transform.rotation = newQuat;
                    

                    PanicAgentController p = hitColliders[i].GetComponent<PanicAgentController>();
                    p.panicStrength += 3.0f;
                    i++;
                }

                hitColliders = Physics.OverlapSphere(hitInfo.point, explosionRadius, (agentsLayer+deadLayer));

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
                    rb.AddExplosionForce(explosionForce, hitInfo.point + Vector3.down*0.2f* explosionRadius, explosionRadius*2.5f);
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
        }
    }
}
