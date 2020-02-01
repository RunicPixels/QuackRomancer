using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PickUp : MonoBehaviour
{
    public enum PickupType { Beak, Head, Body, Tail }

    public PickupType pickupType = PickupType.Body;
    public string pickupName;
    public bool hasBeenPickedUp = false;

    public void OnPickup()
    {
        transform.position += Vector3.down * 5f;
        gameObject.layer = 5;
        gameObject.AddComponent<LayoutElement>();
    }
}
