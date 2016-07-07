using UnityEngine;
using System.Collections;

public class ExplosionAtStart : MonoBehaviour {
    public float explosionRadius, explosionForce;
    [SerializeField]
    LayerMask agentsLayer, deadLayer;
    // Use this for initialization
    void Start () {

        Collider[] hitColliders = Physics.OverlapSphere(transform.position, explosionRadius * 4.2f, (agentsLayer));
        int i = 0;
        while (i < hitColliders.Length)
        {
            float panicVal = ((explosionForce * 4.2f) - (hitColliders[i].transform.position - transform.position).magnitude) / (explosionForce * 4.2f);
            //hitColliders[i].GetComponent<State>().Panic(panicVal);
            hitColliders[i].GetComponent<State>().Panic(1.0f);


            /*  --this functionality will be in 'state' script--
             *  
            Quaternion newQuat = Quaternion.LookRotation(hitColliders[i].transform.position - transform.position);
            hitColliders[i].transform.rotation = newQuat;


            PanicAgentController p = hitColliders[i].GetComponent<PanicAgentController>();
            p.panicStrength += 3.0f;
            */
            i++;
        }

        hitColliders = Physics.OverlapSphere(transform.position, explosionRadius, (agentsLayer + deadLayer));

        //Time.timeScale = 

        i = 0;
        while (i < hitColliders.Length)
        {
            State s = hitColliders[i].GetComponent<State>();
            s.kill();

            Rigidbody rb = hitColliders[i].GetComponent<Rigidbody>();
            rb.AddExplosionForce(explosionForce, transform.position + Vector3.down * 0.2f * explosionRadius, explosionRadius * 2.5f);

            i++;
        }
    }
	
	// Update is called once per frame
	void Update () {
	
	}
}
