using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(AudioSource))]

public class Ambiance : MonoBehaviour
{

    public AudioClip ambiance;
    AudioSource audioSourceAmbiance;

    private void Awake()
    {
        audioSourceAmbiance = GetComponent<AudioSource>();
    }

    // Start is called before the first frame update
    void Start()
    {
        audioSourceAmbiance.PlayOneShot(ambiance, 1);
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
