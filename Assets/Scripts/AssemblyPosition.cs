using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class AssemblyPosition : MonoBehaviour
{
    public PickUp.PickupType type;
    public PickUp pickup;
    public Text pickupName;

    public void SetPickup(PickUp newPickup) {
        pickup = newPickup;
        pickupName.text = pickup.pickupName;
    }
}
