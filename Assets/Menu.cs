using UnityEngine;
using System.Collections;

public class Menu : MonoBehaviour
{

    public Camera cam;
    public GameObject gun;
    public GameObject cylinder;
    public GameObject gui;
    // public AudioClip gunSound;

    private Vector3 camStartPos;
    private Vector3 velocity;


    public AudioClip[] audio;

    private bool CamStopped = false;

    private int cooldown = 3;

    private bool fireFirst = false;

    // Use this for initialization
    void Start()
    {
        Invoke("PlayFirst", 0.2f);
        // Invoke("PlaySecond", 1.8f);

        camStartPos = cam.transform.position;
        velocity = Vector3.zero;

        // AudioClip c;
        // AudioSource x;
        // x.PlayOneShot()

        Debug.DrawRay(camStartPos, gun.transform.position - camStartPos, Color.red, 20);
        cam.GetComponent<Rigidbody>().AddForce((gun.transform.position - camStartPos) * 5f, ForceMode.Impulse);

        // Step2();

    }

    void Update()
    {
        if (Vector3.Distance(cam.transform.position, gun.transform.position) <= 5f)
        {

            cam.GetComponent<Rigidbody>().velocity = Vector3.zero;
            CamStopped = true;

            if (!fireFirst)
            {
                gui.SetActive(true);
                PlaySecond();
                Invoke("Step2", 2.7f);
                fireFirst = true;
                Invoke("PlayTheme", 4f);
            }

        }
    }

    void FixedUpdate()
    {
        if (Time.timeSinceLevelLoad % 7 == 0 && CamStopped)
        {
            Step2();
        }

        //   if (CamStopped && cooldown <= 0)
        //   {
        //
        //       Invoke("Step2", 3f);
        //       cooldown = 3;
        //   }
        //   else
        //   {
        //       Invoke("Decrease", 1f);
        //   }

    }

    public void Step2()
    {
        GetComponent<AudioSource>().PlayOneShot(audio[2]);
        cylinder.GetComponent<Fire>().FireProjectile(GameObject.Find("GunTarget").transform.position);
    }

    public void Decrease()
    {
        cooldown--;
    }

    private void PlayFirst()
    {
        GetComponent<AudioSource>().PlayOneShot(audio[0]);
    }

    private void PlaySecond()
    {
        GetComponent<AudioSource>().PlayOneShot(audio[1]);
    }

    private void PlayTheme()
    {
        GetComponent<AudioSource>().Play();
    }
}
