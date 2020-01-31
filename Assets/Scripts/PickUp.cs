using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PickUp : MonoBehaviour
{
    enum PickupType { Hat, Head, Body }

    public void OnPickup()
    {
        transform.position += Vector3.down * 5f;
        gameObject.layer = 5;
        gameObject.AddComponent<LayoutElement>();
    }
}
