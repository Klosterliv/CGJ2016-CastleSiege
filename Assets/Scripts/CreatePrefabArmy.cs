using UnityEngine;
using System.Collections;

public class CreatePrefabArmy : MonoBehaviour {
    public GameObject thePrefab;
    public int waves;
    public float waveDelay;
    public float secondsToDeploy;
    // Use this for initialization
    void Start () {
        StartCoroutine(placeTroops(secondsToDeploy));
    }
	
	// Update is called once per frame
	void Update () {
	
	}

    IEnumerator placeTroops(float waitTime)
    {
        yield return new WaitForSeconds(waitTime);
        for (int i = 0; i < waves; i++)
        {
            Instantiate(thePrefab, transform.position, transform.rotation);
            yield return new WaitForSeconds(waveDelay);
        }
    }
}
