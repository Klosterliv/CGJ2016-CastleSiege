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
    
    public float formationSpacing = 3;
    public bool keepCreating;
    public float createDelayTime;

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
        armyBasePoint = transform.position;
        m_imageData = new ImageAsData<Vector3>(m_levelData, new PixelCoordinateConverterFlatGrid(m_cellSize));
        if (keepCreating)
        {
            StartCoroutine(infiniteCreate());
        }
    }
    
    IEnumerator infiniteCreate()
    {
        //while (true)
        //for(int i = 0; i<4; i++)
        //{
            Reload();
            yield return new WaitForSeconds(createDelayTime);
        //}
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

        //m_imageData.ReadAllPixels(OnPixel);

        squareForm(10,10);

        //AnchorMiddleSolider();
    }

    void squareForm(int width, int height)
    {
        GameObject soldierParent = new GameObject();
        GameObject[] soldiers = new GameObject[width * height];

        for (int x = 0; x<width; x++)
        {
            for(int y = 0; y<height; y++)
            {
                soldiers[(width * y)+x] = (GameObject)Instantiate(m_fencePrefab, new Vector3(x,0,y) * formationSpacing, Quaternion.identity);
                soldiers[(width * y)+x].transform.parent = soldierParent.transform;
                soldiers[(width * y) + x].GetComponent<MarchingBehvaiour>().marchingDistance = m_cellSize;
                soldiers[(width * y) + x].GetComponent<MarchingBehvaiour>().yRotation = transform.eulerAngles.y;
            }
        }
        soldierParent.transform.parent = army.transform;
        soldierParent.transform.position = transform.position;
        soldierParent.transform.rotation = transform.rotation;
        //Debug.Log(soldiers.Length);
        for (int x = 0; x < width; x++)
        {
            for (int y = 0; y < height; y++)
            {
                if (x != 0) // left
                    soldiers[(width * y) + x].GetComponent<MarchingBehvaiour>().left = soldiers[(width * y) + x-1].transform;
                if (x != width-1) // right
                    soldiers[(width * y) + x].GetComponent<MarchingBehvaiour>().right = soldiers[(width * y) + x+1].transform;
                if (y != 0) // backward
                    soldiers[(width * y) + x].GetComponent<MarchingBehvaiour>().backward = soldiers[(width * (y-1)) + x].transform;
                if (y != height-1) // forward
                    soldiers[(width * y) + x].GetComponent<MarchingBehvaiour>().forward = soldiers[(width * (y+1)) + x].transform;

            }
        }
    }

    /*
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
    */

    void OnPixel(Color32 color, Vector3 position, PixelContext context)
    {
        GameObject soldier = null;
        if (color.r == 0)
        {
            soldier = (GameObject)Instantiate(m_fencePrefab, armyBasePoint + position * formationSpacing, Quaternion.identity);
            soldier.transform.parent = army.transform;
        }
    }
}
