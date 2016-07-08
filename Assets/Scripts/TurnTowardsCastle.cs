using UnityEngine;
using System.Collections;

public class TurnTowardsCastle : MonoBehaviour {
    public Vector3 castlePoint;
    int loopCounter;
    public int skipValue;
    public float strength;
    private PanicAgentController pac;
    private Vector3 flatten = new Vector3(1.0f, 0.0f, 1.0f);
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

            strength = (0.8f-pac.panicStrength)*35.0f;

            if (strength > 0.0f)
            {
                transform.rotation = Quaternion.Lerp(transform.rotation, Quaternion.LookRotation(Vector3.Scale(castlePoint, flatten) - Vector3.Scale(transform.position, flatten)), strength * 0.005f);
            }
            else
            {
                transform.rotation = Quaternion.Lerp(transform.rotation, Quaternion.LookRotation(Vector3.Scale(transform.position, flatten) - Vector3.Scale(castlePoint, flatten)), -strength * 0.01f);
            }
        }
	}
}
