using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Timer : MonoBehaviour
{
    public float beginTime = 60;

    private float currentTime;
    public PickUpManager pickupManager;

    // Start is called before the first frame update
    private void Start()
    {
        currentTime = beginTime;
    }

    // Update is called once per frame
    private void Update()
    {
        currentTime -= Time.deltaTime;
        if (currentTime <= 0) {
            pickupManager?.TimerIsOver();
        }
    }

    public float GetCurrentTime()
    {
        return currentTime;
    }
}
