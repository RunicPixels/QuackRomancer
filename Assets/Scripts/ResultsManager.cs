using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class ResultsManager : MonoBehaviour
{
    public GameObject Curtains;
    public GameObject[] winningCombos;
    public GameObject turd;


    void Start() {
        for (int i = 0; i < winningCombos.Length; i++) {
            winningCombos[i].SetActive(false);
        }
        turd.SetActive(false);
        if (PickUpManager.generatedComboNumber != -1) {
            // happy stuff, show happy animation!
            winningCombos[PickUpManager.generatedComboNumber].SetActive(true);
        }
        else {
            // sad stuff, show sad animation!
            turd.SetActive(true);
        }
        StartCoroutine(ExampleCoroutine());
    }

    IEnumerator ExampleCoroutine() {
        yield return new WaitForSeconds(2);

        for (int i = 0; i < 350; i++)
        {
            Curtains.GetComponent<RectTransform>().Translate(0, .01f, 0);
            yield return null;
        }

        Curtains.SetActive(false);

        yield return new WaitForSeconds(8);

        if (PickUpManager.generatedComboNumber != -1) {
            SceneManager.LoadScene("GoodEnd");
        }
        else {
            SceneManager.LoadScene("BadEnd");
        }
    }
}
