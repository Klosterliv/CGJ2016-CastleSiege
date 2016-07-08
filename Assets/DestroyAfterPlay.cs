using UnityEngine;
using System.Collections;

public class DestroyAfterPlay : MonoBehaviour
{

    // Use this for initialization
    void Start()
    {
        Invoke("DestroyParticle", 15);
    }

    // Update is called once per frame
    void Update()
    {

    }

    void DestroyParticle()
    {
        Destroy(gameObject);
    }
}
