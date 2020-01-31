using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PickUpManager {
    public List<PickUp> currentPickups;

    public void AddPickUp(PickUp pickUp)
    {
        currentPickups.Add(pickUp);
    }
}