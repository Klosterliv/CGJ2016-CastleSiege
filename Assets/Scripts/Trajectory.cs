using UnityEngine;
using System.Collections;

public class Trajectory : MonoBehaviour
{

    LineRenderer line;

    private Vector3 distanceAwayFromZeroOnYVector;
    private float distanceAwayFromZeroOnY;
    private Vector3[] points;

    void Awake()
    {
        line = GetComponent<LineRenderer>();
    }

    // Use this for initialization
    void Start()
    {
        points = new Vector3[20];
        distanceAwayFromZeroOnYVector = new Vector3(0, transform.position.y, 0) - Vector3.zero;
        //print(distanceAwayFromZeroOnYVector.y);
        distanceAwayFromZeroOnY = distanceAwayFromZeroOnYVector.y;

    }

    // Update is called once per frame
    void Update()
    {

    }

    public void ShowTrajectory()
    {
        line.enabled = true;
    }

    public void DrawTrajectory(Vector3 target)
    {
        var g = 16f;

        var vertexCount = 20;

        line.SetVertexCount(vertexCount);

        float v_i = Fire.calculateForce(Vector3.Distance(target, transform.position));

        float time = 2 * v_i * Fire.sinOf45 / g;

        var currentPosition = transform.position;
        var straightLineStep = (target - currentPosition) / vertexCount;

        var currentTime = 0f;
        float timeStep = time / vertexCount;

        for (var i = 0; i < vertexCount; i++)
        {
            if (i > 0)
            {
                currentPosition += straightLineStep;
                currentTime += timeStep;
            }

            var x = currentPosition.x;
            var z = currentPosition.z;

            float y = v_i * Fire.sinOf45 * currentTime - 0.5f * g * currentTime * currentTime;

            y += distanceAwayFromZeroOnY;

            var point = new Vector3(x, y, z);
            points[i] = point;
            line.SetPosition(i, point);

            currentPosition += straightLineStep;
            currentTime += timeStep;
        }

    }

    public void Hide()
    {
        line.enabled = false;
    }

    public Vector3 GetPoint(int index)
    {
        return points[index];
    }

    public Vector3 GetAverage(int count)
    {

        Vector3 average = Vector3.zero;
        for (int i = 0; i < count; i++)
        {
            average += points[i];
        }

        return average / count;
    }


}