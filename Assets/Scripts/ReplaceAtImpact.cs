﻿using UnityEngine;
using System.Collections;

public class ReplaceAtImpact : MonoBehaviour
{
    // private FollowShell followShell;

    public void Start()
    {
        // followShell = GameObject.Find("ShellMonitor").GetComponent<FollowShell>();
    }

    public Transform explosionPrefab;
    void OnCollisionEnter(Collision collision)
    {
        // followShell.HideShellMonitor();

        print("End:" + Time.time);

        ContactPoint contact = collision.contacts[0];

        // Rotate the object so that the y-axis faces along the normal of the surface
        Quaternion rot = Quaternion.FromToRotation(Vector3.up, contact.normal);
        Vector3 pos = contact.point;
        Instantiate(explosionPrefab, pos, rot);
        Destroy(gameObject);
    }
}
