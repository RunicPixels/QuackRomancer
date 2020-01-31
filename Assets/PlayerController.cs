using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Rigidbody))]
public class PlayerController : MonoBehaviour
{
    public Vector3 currentDirection;
    public float speed;

    private Rigidbody _rigidbody;

    // Update is called once per frame
    private void Start()
    {
        AssignComponentReferences();
    }

    private void Update()
    {
        QueueInput();
        Rotate();
    }

    private void FixedUpdate()
    {
        Move();
    }

    private void AssignComponentReferences()
    {
        _rigidbody = GetComponent<Rigidbody>();
    }
    
    private void QueueInput()
    {
        currentDirection = new Vector3(Input.GetAxis("Horizontal"), 0, Input.GetAxis("Vertical"));
        if (currentDirection.magnitude > 1f) currentDirection = currentDirection.normalized;
    }
    
    private void Move()
    {
        _rigidbody.AddForce(currentDirection * speed);
    }

    private void Rotate()
    {
        var singleStep = speed * Time.deltaTime;
        var newDirection = Vector3.RotateTowards(transform.forward, currentDirection, singleStep, 0.0f);
        transform.rotation = Quaternion.LookRotation(newDirection);
    }
    
    

}
