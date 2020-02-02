using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class PickUpManagerEntry : Button
{
    public Text textObject;
    private PickUpManager manager;
    private PickUp pickup;

    public void SetPickUp(PickUp pickUp, PickUpManager manager) {
        textObject.text = pickUp.pickupType + ": " + pickUp.pickupName;
        // yo does this leak a lot of mem? yes. do i care? no, it's a hackathon and it's 02:49AM
        this.manager = manager;
        this.pickup = pickUp;
    }

    public override void OnPointerClick(PointerEventData eventData) // 3
    {
        manager.InventoryClicked(pickup);
    }
}
