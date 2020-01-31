using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PickupPickup : MonoBehaviour
{
    public PickUpManager pickUpManager;
    public void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<PickUp>() != null)
        {
            var pickup = other.GetComponent<PickUp>();
            pickUpManager.AddPickUp(pickup);
            pickup.transform.parent = pickUpManager.transform;
        }
    }
}
