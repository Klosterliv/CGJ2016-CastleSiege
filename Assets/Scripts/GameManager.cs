﻿using UnityEngine;
using System.Collections;

public class GameManager : MonoBehaviour
{

    public GameObject endgameState;

    public static GameManager instance;

    public int totalEnemyCount = 1000;

    public int deaths = 0;
    public float buildingDmg = 0;
	public int buildingsDestroyed = 0;



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

        if (deaths > 10)
        {
            endgameState.GetComponent<EndGameState>().Success(deaths, buildingDmg);
        }


        if (buildingDmg > 150)
        {
            endgameState.GetComponent<EndGameState>().Failure(deaths, buildingDmg);
        }

    }

    public void AddDead()
    {
        deaths++;
        int deadPortion = (10 * deaths / totalEnemyCount) + 2;


        if (deadPortion > 0 && deadPortion < 10)
            MusicManager.instance.SetEliasLevel(deadPortion, 4, false);


    }


}
