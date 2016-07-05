using UnityEngine;
using System.Collections;
using System.Linq;
using System.Collections.Generic;

public class BuildArmy : MonoBehaviour
{
    [System.Serializable]
    public class ColorToPrefabEntry
    {
        public Color32 color;
        public GameObject prefab;
    }

    public float armyReferencePointX = 260;
    public float armyReferencePointZ = 60;
    public float formationSpacing = 3;

    private Vector3 armyBasePoint;
    private Color32 white;

    private GameObject previousSoldier;

    [SerializeField]
    Texture2D m_levelData;
    [SerializeField]
    float m_cellSize = 1f;
    [SerializeField]
    List<ColorToPrefabEntry> m_prefabs;

    [Header("Fence")]
    [SerializeField]
    bool m_useFence = false;
    [SerializeField]
    Color32 m_fenceColor;
    [SerializeField]
    Color32 m_emptyColor;
    [SerializeField]
    GameObject m_fencePrefab;

    ImageAsData<Vector3> m_imageData;
    List<GameObject> m_loadedObjects = new List<GameObject>();

    private GameObject army;

    void Start()
    {
        white = new Color32(255, 255, 255, 255);
        army = GameObject.Find("Army");
        armyBasePoint = new Vector3(armyReferencePointX, 1.5f, armyReferencePointZ);
        m_imageData = new ImageAsData<Vector3>(m_levelData, new PixelCoordinateConverterFlatGrid(m_cellSize));
    }

    void OnGUI()
    {
        var rect = new Rect(30, 30, 150, 50);
        if (GUI.Button(rect, "Reload"))
        {
            Reload();
        }
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.R))
        {
            Reload();
        }
    }

    void Clean()
    {
        foreach (var go in m_loadedObjects)
        {
            Destroy(go);
        }
        m_loadedObjects.Clear();
    }

    void Reload()
    {
        Clean();

        m_imageData.ReadAllPixels(OnPixel);

        AnchorMiddleSolider();
    }

    void AnchorMiddleSolider()
    {
        print("here");
        var leaderIndex = army.transform.childCount / 2;

        var leader = army.transform.GetChild(leaderIndex);

        var name = "GoldLeader";
        leader.name = name;

        leader.GetComponent<ForwardMovement>().force += 20;

        foreach (var spring in army.GetComponentsInChildren<SpringJoint>())
        {
            if (spring.transform.name != name)
                spring.connectedBody = leader.GetComponent<Rigidbody>();
        }
    }

    void OnPixel(Color32 color, Vector3 position, PixelContext context)
    {
        GameObject solider = null;
        if (color.r == 0)
        {

            solider = (GameObject)Instantiate(m_fencePrefab, armyBasePoint + position * formationSpacing, Quaternion.identity);
            solider.transform.parent = army.transform;
        }
    }
}
