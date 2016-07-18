using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class EndGameState : MonoBehaviour
{

    Text text;

    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {

    }

    public void Success(int killed, float destroyed)
    {
        transform.GetChild(0).gameObject.SetActive(true);
        text = GetComponentInChildren<Text>();
        var template = "Congratulations! You've murdered {0} humans and you win! {1} buildings were destroyed.";
        text.text = string.Format(template, killed, destroyed);
        //transform.GetChild(0).gameObject.SetActive(true);
    }

    public void Failure(int killed, float destroyed)
    {
        transform.GetChild(0).gameObject.SetActive(true);
        text = GetComponentInChildren<Text>();
        var template = "Oh no! You've murdered {0} humans but still lost. {1} buildings were destroyed - that's too many.";
        text.text = string.Format(template, killed, destroyed);
        transform.GetChild(0).gameObject.SetActive(true);
    }

    public void LoadMainMenu()
    {
		GameManager.instance.levelPlaying = false;
        SceneManager.LoadScene("MainMenu2");
		//DemoPlayer.instance.Silence(100, 0, 0, 0);
		MusicManager.instance.StopMusic();
    }
}
