using UnityEngine;
using System.Collections;

public class aiAttack : MonoBehaviour {
    public Structure attackedStructure;
    public float strength;
    int loopCounter;
    public int skipValue;
    // Use this for initialization
    void Start () {
        loopCounter = Random.Range(0, skipValue);
    }
	
	// Update is called once per frame
	void FixedUpdate () {
        if(attackedStructure != null)
        {
            loopCounter++;
            if (loopCounter >= skipValue)
            {
                loopCounter = 0;
                attackedStructure.life -= strength;
            }
        } else
        {
            GetComponent<State>().Panic(-0.2f);
        }
	}
}
