using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ResultsManager : MonoBehaviour
{
    public GameObject dundundunpanel;
    public GameObject[] winningCombos;


    void Start() {
        for (int i = 0; i < winningCombos.Length; i++) {
            winningCombos[i].SetActive(false);
        }
        if (PickUpManager.generatedComboNumber != -1) {
            // happy stuff, show happy animation!
            winningCombos[PickUpManager.generatedComboNumber].SetActive(true);
        }
        else {
            // sad stuff, show sad animation!

        }
        StartCoroutine(ExampleCoroutine());
    }

    IEnumerator ExampleCoroutine() {
        yield return new WaitForSeconds(3);

        dundundunpanel.SetActive(false);
    }
}
