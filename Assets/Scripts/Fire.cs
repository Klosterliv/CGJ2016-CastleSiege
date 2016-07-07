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


    // Use this for initialization
    void Start()
    {
        cooldown = GetComponent<Cooldown>();
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
            cooldown.Restart();
        }


    }

    public float angle = 45;
    public float force = 10;

    private void FireProjectile(Vector3 target)
    {
        print("Start:" + Time.time);

        var distance = Vector3.Distance(target, transform.position);
        var aim = (new Vector3(target.x, 0, target.z) - transform.position).normalized;
        var proj = (GameObject)Instantiate(projectilePrefab, transform.position, new Quaternion());

        shellCam = (GameObject)Instantiate(shellCameraPrefab, transform.position, new Quaternion());

        shellCam.transform.parent = proj.transform;

        Debug.DrawRay(transform.position, -transform.up * 10, Color.red);

        proj.GetComponent<Rigidbody>().AddForce(-transform.up * calculateForce(distance), ForceMode.Impulse);

        followShell.RegisterShellCam(shellCam.transform);

        shellCam.gameObject.SetActive(true);
        // SwitchToShellCamera1();
    }

    public static float calculateForce(float distance)
    {
        var v = distance * g / 2 * sinOf45 * cosOf45;

        return Mathf.Sqrt(v);
    }

    private void SwitchToShellCamera1()
    {

        shellCam.transform.Translate(-Vector3.back * 20);
        // shellCam.transform.Translate(Vector3.right * 20);
        shellCam.transform.LookAt(transform.position);
        shellCam.gameObject.SetActive(true);


    }

    private void SwitchToShellCamera2()
    {
        shellCam.transform.Translate(-Vector3.back * 23);
        shellCam.transform.Translate(Vector3.up * 2);
        shellCam.transform.localRotation = Quaternion.Euler(0, 0, 0);
    }
}
