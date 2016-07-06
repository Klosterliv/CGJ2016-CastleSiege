using UnityEngine;
using System.Collections;

public class CameraControl : MonoBehaviour {

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

	// Use this for initialization
	void Start () {
		targetPos = transform.position;
	}
	
	// Update is called once per frame
	void Update () {

		MoveCamera();

	}


	void MoveCamera() {

		Vector3 move = new Vector3(Input.GetAxis("Horizontal"), 0, Input.GetAxis("Vertical"));
		move *= camSpeed;

		targetPos = transform.position+move;

		//transform.Translate(move);
		RaycastHit hit;
		Ray ray = new Ray(transform.position, -Vector3.up);
		//Debug.DrawRay(ray);
		if (Physics.Raycast(ray, out hit, 2000, terrainMask)) {
			//Debug.Log(hit.distance);
			//if (hit.distance <= minHeight)
			targetPos.y = hit.point.y + minHeight;
		}

		transform.position = Vector3.Lerp(transform.position, targetPos, Time.deltaTime*camLerpSpeed);
	}
}
