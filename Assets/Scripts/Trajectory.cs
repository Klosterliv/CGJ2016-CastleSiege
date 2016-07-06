﻿using UnityEngine;
using System.Collections;

public class Trajectory : MonoBehaviour
{

    LineRenderer line;
    // Use this for initialization
    void Start()
    {
        line = this.gameObject.GetComponent<LineRenderer>();
    }

    // Update is called once per frame
    void Update()
    {

    }


    public void DrawTrajectory(Vector3 target)
    {
        line.enabled = true;

        //var g = 12.15f;\
        var g = 13.5f;
        var vertexCount = 20;

        line.SetVertexCount(vertexCount);

        float v_i = Fire.calculateForce(Vector3.Distance(target, transform.position));
        // var v_y = v_i*Fire.sinOf45 - Fire.g * 

        print("Velocity:" + v_i);
        print("Vy:" + v_i * Fire.sinOf45);
        //print("Velocity_y" + )
        float time = 2 * v_i * Fire.sinOf45 / g;
        print("T:" + time);

        var currentPosition = transform.position;
        var straightLineStep = (target - currentPosition) / vertexCount;

        var currentTime = 0f;
        float timeStep = time / vertexCount;

        for (var i = 0; i < vertexCount; i++)
        {
            currentPosition += straightLineStep;
            currentTime += timeStep;

            var x = currentPosition.x;
            var z = currentPosition.z;

            float y = v_i * Fire.sinOf45 * currentTime - 0.5f * g * currentTime * currentTime;

            var point = new Vector3(x, y, z);
            line.SetPosition(i, point);

            currentPosition += straightLineStep;
            currentTime += timeStep;
        }

    }

    public void Clear()
    {
        line.enabled = false;
    }
}