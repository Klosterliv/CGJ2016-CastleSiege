using UnityEngine;
using System.Collections;

public class ReplaceAtImpact : MonoBehaviour
{
    // private FollowShell followShell;
    private Vector3 target;
    public GameObject pointOfImpactMarkerPrefab;
    private GameObject pointOfImpactMarker;
    private bool isExploding;

    public void Start()
    {
        isExploding = false;
        MarkImpactPoint();
        // followShell = GameObject.Find("ShellMonitor").GetComponent<FollowShell>();
    }

    public Transform explosionPrefab;
    void OnCollisionEnter(Collision collision)
    {
        /*if(collision.gameObject.layer != gameObject)
        {*/
            if (isExploding == false)
            {
                isExploding = true;
                // followShell.HideShellMonitor();

                print("End:" + Time.time);

                ContactPoint contact = collision.contacts[0];

                // Rotate the object so that the y-axis faces along the normal of the surface
                Quaternion rot = Quaternion.FromToRotation(Vector3.up, contact.normal);
                Vector3 pos = contact.point;

                Destroy(pointOfImpactMarker);

                Instantiate(explosionPrefab, pos, rot);
                Destroy(gameObject);
            }
        //}
        
    }

    public void RegisterImpactPoint(Vector3 target)
    {
        this.target = target;
    }

    private void MarkImpactPoint()
    {
        if (target != null)
            pointOfImpactMarker = (GameObject)Instantiate(pointOfImpactMarkerPrefab, target, new Quaternion(0, 0, 0, 0));
        else
        { throw new System.Exception("Target for mark point of impact not set."); }
    }
}
