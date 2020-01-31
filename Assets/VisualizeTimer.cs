using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

[RequireComponent(typeof(TextMeshProUGUI))]
public class VisualizeTimer : MonoBehaviour
{
    private TextMeshProUGUI tmProUGUI;

    public Timer timer;

    private const string DecimalPoint = "0";
    // Start is called before the first frame update
    private void Start()
    {
        tmProUGUI = GetComponent<TextMeshProUGUI>();
    }

    // Update is called once per frame
    private void Update()
    {
        tmProUGUI.text = timer.GetCurrentTime().ToString(DecimalPoint);
    }
}
