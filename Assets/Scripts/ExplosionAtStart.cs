using UnityEngine;
using System.Collections;

public class ExplosionAtStart : MonoBehaviour {
    public float explosionRadius, explosionForce, delayInSeconds, addPanic;
    public bool shouldKill;
    [SerializeField]
    LayerMask agentsLayer, deadLayer;
    // Use this for initialization



    void Start() {
        StartCoroutine(kaboom());
    }

    IEnumerator kaboom() {
        yield return new WaitForSeconds(delayInSeconds);
        explosionRadius *= 4.2f;
        Collider[] hitColliders = Physics.OverlapSphere(transform.position, explosionRadius, (agentsLayer));
        int i = 0;
        while (i < hitColliders.Length)
        {
            float panicVal = (explosionRadius - Vector3.Distance(hitColliders[i].transform.position, transform.position)) / explosionRadius;
            //float panicVal = ((explosionForce * 4.2f) - (hitColliders[i].transform.position - transform.position).magnitude);
            hitColliders[i].GetComponent<State>().Panic(panicVal);

            //hitColliders[i].transform.rotation = Quaternion.Lerp(hitColliders[i].transform.rotation, Quaternion.LookRotation(hitColliders[i].transform.position - transform.position), panicVal+5);
            hitColliders[i].transform.rotation = Quaternion.LookRotation(hitColliders[i].transform.position - transform.position);
            //hitColliders[i].transform.rotation = Quaternion.Euler(0, -90.0f, 0);
            //Debug.DrawLine(hitColliders[i].transform.position, (transform.position - hitColliders[i].transform.position));
            Debug.DrawLine(transform.position, hitColliders[i].transform.position);

            //Debug.Log(panicVal);
            //hitColliders[i].GetComponent<State>().Panic(1.0f + addPanic);

            i++;
        }

        hitColliders = Physics.OverlapSphere(transform.position, explosionRadius, (agentsLayer + deadLayer));

        //Time.timeScale = 

        i = 0;
        while (i < hitColliders.Length)
        {
            State s = hitColliders[i].GetComponent<State>();
            if (shouldKill)
            {
                s.kill();
            }
                

            Rigidbody rb = hitColliders[i].GetComponent<Rigidbody>();
            rb.AddExplosionForce(explosionForce, transform.position + Vector3.down * 0.2f * explosionRadius, explosionRadius * 2.5f);

            i++;
        }
    }
	
	// Update is called once per frame
	void Update () {
	
	}
}
