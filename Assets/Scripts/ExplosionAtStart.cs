using UnityEngine;
using System.Collections;

public class ExplosionAtStart : MonoBehaviour {
    public float explosionRadius, explosionForce, delayInSeconds, addPanic;
    public bool shouldKill;
    [SerializeField]
    LayerMask agentsLayer, deadLayer;

    private Vector3 flatten = new Vector3(1.0f,0.0f,1.0f);
    // Use this for initialization

	[SerializeField]
	Transform screamsSFX;
	[SerializeField]
	Transform splosionsSFX;



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
            
            hitColliders[i].GetComponent<State>().Panic(panicVal);
            
            hitColliders[i].transform.rotation = Quaternion.LookRotation(Vector3.Scale(hitColliders[i].transform.position, flatten) - Vector3.Scale(transform.position ,flatten));
            Debug.DrawLine(transform.position, hitColliders[i].transform.position);

            i++;
        }

        hitColliders = Physics.OverlapSphere(transform.position, explosionRadius, (agentsLayer + deadLayer));

		// SOUND //
		if (shouldKill&&hitColliders.Length>0){
			screamsSFX.gameObject.SetActive(true);
		}
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
            rb.AddExplosionForce(explosionForce*Random.RandomRange(0.0f,0.5f), transform.position + Vector3.down * 0.2f * explosionRadius, explosionRadius * 2.5f);

            i++;
        }

        hitColliders = Physics.OverlapSphere(transform.position, explosionRadius*0.3f, (agentsLayer + deadLayer));
        if (shouldKill)
        {
            if (hitColliders.Length != 0)
            {
                GameObject.Find("TimeManager").GetComponent<timeManager>().timeAim = 0f;
            }
            //Time.timeScale = Mathf.Min(Time.timeScale, 1.0f / hitColliders.Length * 2.0f);
        }
        i = 0;
        while (i < hitColliders.Length)
        {
            State s = hitColliders[i].GetComponent<State>();
            if (shouldKill)
            {
                s.kill();
            }


            Rigidbody rb = hitColliders[i].GetComponent<Rigidbody>();
            rb.AddExplosionForce(explosionForce * Random.RandomRange(0.0f, 1.0f), transform.position + Vector3.down * 0.2f * explosionRadius, explosionRadius * 2.5f);

            i++;
        }
    }
	
	// Update is called once per frame
	void Update () {
	
	}
}
