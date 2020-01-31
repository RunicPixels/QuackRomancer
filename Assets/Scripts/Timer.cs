using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Timer : MonoBehaviour
{
    public float beginTime = 60;

    private float currentTime;
    // Start is called before the first frame update
    private void Start()
    {
        currentTime = beginTime;
    }

    // Update is called once per frame
    private void Update()
    {
        currentTime -= Time.deltaTime;
    }

    public float GetCurrentTime()
    {
        return currentTime;
    }
}
