﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Boost : MonoBehaviour
{
    public Rigidbody rb;
    public PlayerController controller;

    public float boostForce = 50;
    // Start is called before the first frame update
    private void Start()
    {
        if (!controller)controller = GetComponent<PlayerController>();
        if(!rb) rb = GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    private void Update()
    {
        Check();
    }

    private void Check()
    {
        if(Input.GetButtonDown("Fire1"))
        {
            DoDash();
        }
    }

    private void DoDash()
    {
        rb.velocity *= 0.2f;
        rb.AddForce(controller.currentDirection * boostForce);
    }
}
