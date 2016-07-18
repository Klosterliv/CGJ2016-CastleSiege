using UnityEngine;
using System.Collections;

public class GameManager : MonoBehaviour
{

    public GameObject endgameState;

    public static GameManager instance;

    public int totalEnemyCount = 1000;

    public int deaths = 0;
    public float buildingDmg = 0;
	public int buildingsDestroyed = 0;

	LevelSettings levelSettings;

	public bool levelPlaying = false;


    void Awake()
    {
        if (instance == null)
        {
            instance = this as GameManager;
            DontDestroyOnLoad(gameObject);
        }
        else
            Destroy(gameObject);
    }

    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {

		if (levelPlaying) CheckWinLose ();

    }

    public void AddDead()
    {
        deaths++;
        int deadPortion = (10 * deaths / totalEnemyCount) + 2;


        if (deadPortion > 0 && deadPortion < 10)
            MusicManager.instance.SetEliasLevel(deadPortion, 4, false);


    }

	public void NewLevel(LevelSettings levelSettings) {
		
		this.levelSettings = levelSettings;
		deaths = 0;
		buildingDmg = 0;
		buildingsDestroyed = 0;
		endgameState = levelSettings.endGameState;
		levelPlaying = true;
		MusicManager.instance.StartMusic();

	}

	void CheckWinLose () {
		if (deaths > levelSettings.killsToWin)
		{
			endgameState.GetComponent<EndGameState>().Success(deaths, buildingDmg);
			//levelPlaying = false;
		}


		if (buildingDmg > levelSettings.buildingDmgToLose)
		{
			endgameState.GetComponent<EndGameState>().Failure(deaths, buildingDmg);
			//levelPlaying = false;
		}
	}


}
