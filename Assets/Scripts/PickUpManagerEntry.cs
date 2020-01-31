using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PickUpManagerEntry : MonoBehaviour
{
    public Text textObject;

    public void SetPickUp(PickUp pickUp) {
        textObject.text = pickUp.gameObject.name;
    }
}
