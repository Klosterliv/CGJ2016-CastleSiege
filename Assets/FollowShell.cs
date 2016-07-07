using UnityEngine;
using System.Collections;

public class FollowShell : MonoBehaviour
{
    Transform shellCam;

    // Use this for initialization
    void Start()
    {
        //   HideShellMonitor();
    }

    // Update is called once per frame
    void Update()
    {
        if (shellCam == null)
            HideShellMonitor();
    }

    public void ShowShellMonitor()
    {
        gameObject.SetActive(true);
    }

    public void HideShellMonitor()
    {
        gameObject.SetActive(false);
    }

    public void RegisterShellCam(Transform shellCam)
    {
        this.shellCam = shellCam;
    }

    public bool isShellVIew()
    {
        if (shellCam == null)
            return false;

          print(shellCam.GetComponent<Camera>().targetTexture);

        if (shellCam.GetComponent<Camera>().targetTexture == null)
            return true;

        return false;
    }

    private void SwitchToShellView()
    {

    }

    void OnMouseDown()
    {
        shellCam.GetComponent<Camera>().targetTexture = null;
    }
}
