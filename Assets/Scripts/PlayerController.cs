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
        
        Rotate();
    }

    private void FixedUpdate()
    {
        QueueInput();
        Move();
    }

    private void AssignComponentReferences()
    {
        _rigidbody = GetComponent<Rigidbody>();
    }
    
    private void QueueInput()
    {
        currentDirection = new Vector3(Input.GetAxis("Horizontal"), 0, Input.GetAxis("Vertical"));
    }
    
    private void Move()
    {
        if (currentDirection.magnitude > 1f) currentDirection = currentDirection.normalized;
        _rigidbody.AddForce(speed * Time.fixedDeltaTime * 60 * currentDirection);


    }

    private void Rotate()
    {
        var singleStep = speed * Time.deltaTime;
        var newDirection = Vector3.RotateTowards(transform.forward, currentDirection, singleStep, 0.0f);
        transform.rotation = Quaternion.LookRotation(newDirection);
    }
    
    

}
