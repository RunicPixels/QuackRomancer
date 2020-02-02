﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PickupPickup : MonoBehaviour
{
    public PickUpManager pickUpManager;
    public void OnTriggerEnter(Collider other)
    {
        PickUp pickup = other.GetComponent<PickUp>();
        if (pickup != null && !pickup.hasBeenPickedUp)
        {
            pickUpManager.AddPickUp(pickup);
            pickup.transform.parent = pickUpManager.transform;
            pickup.hasBeenPickedUp = true;
            pickup.gameObject.SetActive(false);
        }
    }
}
