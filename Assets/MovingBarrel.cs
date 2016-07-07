using UnityEngine;
using System.Collections;

public class MovingBarrel : MonoBehaviour
{

    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {

    }

    public void LookAt(Vector3 dir)
    {
        transform.LookAt(dir);
    }
}
