using UnityEngine;
using System.Collections;

public class CameraControl : MonoBehaviour
{

    [SerializeField]
    float zoomSpeed = 1;
    [SerializeField]
    float camSpeed = 1;
    [SerializeField]
    float maxHeight = 2;
    [SerializeField]
    float minHeight = 1;
    [SerializeField]
    float camLerpSpeed = 1;
    [SerializeField]
    LayerMask terrainMask;

    Vector3 targetPos;

	float height;

    void Awake()
    {
        transform.FindChild("ShellMonitor").gameObject.SetActive(true);
    }

    // Use this for initialization
    void Start()
    {

        targetPos = transform.position;
		height = minHeight+((maxHeight-minHeight)/2);
    }

    // Update is called once per frame
    void Update()
    {

        MoveCamera();

    }


    void MoveCamera()
    {

        Vector3 move = new Vector3(Input.GetAxisRaw("Horizontal"), 0, Input.GetAxisRaw("Vertical"));
        move *= camSpeed;

        targetPos = transform.position + move;

        //transform.Translate(move);
        RaycastHit hit;
        Ray ray = new Ray(transform.position, -Vector3.up);
        //Debug.DrawRay(ray);
        if (Physics.Raycast(ray, out hit, 2000, terrainMask))
        {
            //Debug.Log(hit.distance);
            //if (hit.distance <= minHeight)
            targetPos.y = hit.point.y + minHeight;
        }

        transform.position = Vector3.Lerp(transform.position, targetPos, Time.unscaledDeltaTime * camLerpSpeed);
    }
}
