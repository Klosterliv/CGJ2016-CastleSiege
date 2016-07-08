using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class Cooldown : MonoBehaviour
{

    public float cooldown = 30f;
    public Slider slider;
    private float current = 0;
    private float cooldownStep = 0.1f;
    private Ammo ammo;

    // Use this for initialization
    void Start()
    {
        HiderSlider();
        slider.maxValue = cooldown;
        slider.value = cooldown;
        ammo = GetComponent<Ammo>();

    }

    // Update is called once per frame
    void Update()
    {

    }

    void FixedUpdate()
    {

        if (!isReady())
        {
            current -= cooldownStep;
            slider.value = current;

            if (isReady())
            {
                ammo.GenerateVisualAmmo();
                HiderSlider();
            }

        }

    }

    public bool isReady()
    {
        return current <= 0;
    }

    public void Restart()
    {
        ShowSlider();
        current = cooldown;
        slider.value = cooldown;
    }

    private void HiderSlider()
    {
        slider.transform.parent.gameObject.SetActive(false);
    }

    private void ShowSlider()
    {
        slider.transform.parent.gameObject.SetActive(true);
    }
}
