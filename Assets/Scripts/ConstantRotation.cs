using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ConstantRotation : MonoBehaviour
{
    public Vector3 axis = Vector3.up;

    public float amount = 50f;

    // Update is called once per frame
    private void Update()
    {
        transform.Rotate(axis, amount * Time.deltaTime);
    }
}
