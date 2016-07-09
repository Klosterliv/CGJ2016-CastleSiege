using UnityEngine;
using System.Collections;
using System;

public class Fire : MonoBehaviour
{
    public const float g = 45f;
    public const float sinOf45 = 0.85090352453f;
    public const float cosOf45 = 0.52532198881f;

    public GameObject projectilePrefab;
    public GameObject shellCameraPrefab;

    RaycastHit hitInfo;
    [SerializeField]
    LayerMask landscapeLayer, agentsLayer, deadLayer;

    private GameObject shellCam = null;
    private FollowShell followShell;
    private Cooldown cooldown;
    private Ammo ammo;

    // Use this for initialization
    void Start()
    {

        cooldown = GameObject.Find("Ammo").GetComponent<Cooldown>();
        ammo = GameObject.Find("Ammo").GetComponent<Ammo>();
        followShell = GameObject.Find("ShellMonitor").GetComponent<FollowShell>();
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetMouseButtonDown(0) && cooldown.isReady() && !followShell.isShellVIew())
        {
            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            Physics.Raycast(ray, out hitInfo, landscapeLayer);
            FireProjectile(hitInfo.point);

            followShell.ShowShellMonitor();
            ammo.decreaseAmmo();
            // cooldown.Restart();
        }


    }

    public float angle = 45;
    public float force = 10;

    public void FireProjectile(Vector3 target)
    {
 
        var distance = Vector3.Distance(target, transform.position);
        var aim = (new Vector3(target.x, 0, target.z) - transform.position).normalized;
        var proj = (GameObject)Instantiate(projectilePrefab, transform.position, new Quaternion());
        
        System.Array.Copy(GetComponent<Trajectory>().thePositions, proj.GetComponent<MovingWithLine>().thePositions, GetComponent<Trajectory>().trajSteps);
        proj.GetComponent<MovingWithLine>().enabled = true;

        proj.GetComponent<ReplaceAtImpact>().RegisterImpactPoint(target);

        shellCam = (GameObject)Instantiate(shellCameraPrefab, transform.position, new Quaternion());

        shellCam.transform.parent = proj.transform;

        Debug.DrawRay(transform.position, -transform.up * 10, Color.red);

        //proj.GetComponent<Rigidbody>().AddForce(-transform.up * calculateForce(distance), ForceMode.Impulse);

        EffectsManager.instance.SpawnCannonFlash(transform.position, target);
        EffectsManager.instance.SpawnTrailEffect(proj.transform);

        followShell.RegisterShellCam(shellCam.transform);

        shellCam.gameObject.SetActive(true);
    }

    public static float calculateForce(float distance)
    {
        var v = distance * g / 2 * sinOf45 * cosOf45;

        return Mathf.Sqrt(v);
    }
}
