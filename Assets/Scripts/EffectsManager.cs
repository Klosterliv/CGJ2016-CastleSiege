using UnityEngine;
using System.Collections;

public class EffectsManager : MonoBehaviour
{

    public static EffectsManager instance;

    [SerializeField]
    GameObject bloodEffect;
    [SerializeField]
    GameObject bloodSplat;
    [SerializeField]
    GameObject explosionEffect;
    [SerializeField]
    GameObject projectileTrailEffect;
    [SerializeField]
    GameObject muzzleFlash;
    [SerializeField]
    GameObject bulletTrace;
    [SerializeField]
    GameObject cannonMuzzleFlash;
    [SerializeField]
    GameObject cannonMuzzleSmoke;


    [SerializeField]
    LayerMask nonAgentLayer;

    void Awake()
    {
        if (instance == null)
        {
            instance = this as EffectsManager;
            DontDestroyOnLoad(gameObject);
        }
        else
            Destroy(gameObject);
    }

    // Use this for initialization
    void Start()
    {
    }

    // Update is called once per frame
    void Update()
    {

    }

    public void SpawnBlood(Transform parent)
    {
        GameObject newBlood;
        newBlood = (GameObject)Instantiate(bloodEffect, parent.position, parent.rotation);
        newBlood.transform.SetParent(parent);
    }
    public void SpawnBloodSplat(Transform parent)
    {
        GameObject newBlood;
        Ray ray = new Ray(parent.position, -Vector3.up);
        RaycastHit hit;
        if (Physics.Raycast(ray, out hit, 200, nonAgentLayer))
        {
            newBlood = (GameObject)Instantiate(bloodSplat, hit.point, parent.rotation);
        }
    }

    public void SpawnExplosion(Vector3 explosionCenter)
    {
        Instantiate(explosionEffect, explosionCenter, Quaternion.identity);
    }

    public void SpawnTrailEffect(Transform projectile)
    {
        GameObject newTrail;
        newTrail = (GameObject)Instantiate(projectileTrailEffect, projectile.position, projectile.rotation);
        ProjectileTrailEffect trailScript = (ProjectileTrailEffect)newTrail.GetComponent(typeof(ProjectileTrailEffect));
        trailScript.projectile = projectile;
    }

    public void SpawnMuzzleFlash(Transform muzzle)
    {
        GameObject newFlash;
        newFlash = (GameObject)Instantiate(muzzleFlash, muzzle.position, muzzle.rotation);
    }

    public void SpawnBulletTrace(Vector3 origin, Vector3 vector)
    {
        GameObject newTrace;
        newTrace = (GameObject)Instantiate(bulletTrace, origin, Quaternion.identity);

        LineRenderer trace = (LineRenderer)newTrace.GetComponent(typeof(LineRenderer));
        trace.SetPosition(0, origin);
        trace.SetPosition(1, origin + vector);

        Material traceMat = trace.material;
        traceMat.SetFloat("_distance", vector.magnitude);
        traceMat.SetFloat("_timestamp", Time.time);

    }

    public void SpawnCannonFlash(Vector3 position, Vector3 target)
    {
        var parent = cannonMuzzleFlash.transform.parent;

        var flash = Instantiate(cannonMuzzleFlash);
        flash.SetActive(true);
        flash.transform.position += position;
        flash.transform.rotation = Quaternion.LookRotation(-parent.up, Vector3.up);

        var smoke = Instantiate(cannonMuzzleSmoke);
        smoke.SetActive(true);
        smoke.transform.position += position;
        smoke.transform.rotation = Quaternion.LookRotation(-parent.up, Vector3.up);

        flash.GetComponent<DestroyAfterPlay>().enabled = true;
        smoke.GetComponent<DestroyAfterPlay>().enabled = true;

    }

}