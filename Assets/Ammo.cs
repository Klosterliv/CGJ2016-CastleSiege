using UnityEngine;
using System.Collections;

public class Ammo : MonoBehaviour
{

    public int ammoCount = 3;
    public GameObject ammoPrefab;
    Cooldown cooldown;

    private int currentAmmounCount;

    private ArrayList visualAmmo;

    // Use this for initialization
    void Start()
    {
        currentAmmounCount = ammoCount;
        visualAmmo = new ArrayList();
        cooldown = GetComponent<Cooldown>();
        GenerateVisualAmmo();
    }

    // Update is called once per frame
    void Update()
    {

    }

    public void decreaseAmmo()
    {
        currentAmmounCount--;
        GameObject ammo = (GameObject)visualAmmo[visualAmmo.Count - 1];
        Destroy(ammo);
        visualAmmo.RemoveAt(visualAmmo.Count - 1);

        if (currentAmmounCount <= 0)
        {
            cooldown.Restart();
            ResetAmmo();
        }
    }

    public void ResetAmmo()
    {
        currentAmmounCount = ammoCount;
    }

    public void GenerateVisualAmmo()
    {
        for (int i = 0; i < ammoCount; i++)
        {
            var ammo = (GameObject)Instantiate(ammoPrefab);

            ammo.transform.parent = transform;
            ammo.transform.localPosition = new Vector3(-8f, -4f, 9 + i);

            visualAmmo.Add(ammo);
        }

    }
}
