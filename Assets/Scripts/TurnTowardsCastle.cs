using UnityEngine;
using System.Collections;

public class TurnTowardsCastle : MonoBehaviour {
    public Vector3 castlePoint;
    int loopCounter;
    public int skipValue;
    public float strength;
    private PanicAgentController pac;
    // Use this for initialization
    void Start () {
        loopCounter = Random.Range(0, skipValue);
        pac = GetComponent<PanicAgentController>();
    }
	
	// Update is called once per frame
	void FixedUpdate () {
        loopCounter++;
        if (loopCounter >= skipValue)
        {
            loopCounter = 0;

            strength = (0.5f-pac.panicStrength)*35.0f;

            if (strength > 0.0f)
            {
                transform.rotation = Quaternion.Lerp(transform.rotation, Quaternion.LookRotation(castlePoint - transform.position), strength * 0.005f);
            }
            else
            {
                transform.rotation = Quaternion.Lerp(transform.rotation, Quaternion.LookRotation(transform.position - castlePoint), -strength * 0.01f);
            }
        }
	}
}
