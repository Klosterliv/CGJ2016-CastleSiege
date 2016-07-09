using UnityEngine;
using System.Collections;

public class TurnOnChildren : MonoBehaviour {

	// Use this for initialization
	void Start () {
        StartCoroutine(turnOn());
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    IEnumerator turnOn()
    {
        for(int i = 0; i<transform.childCount; i++)
        {
            transform.GetChild(i).gameObject.SetActive(true);
            yield return null;
        }
    }
}
