using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class ResultsManager : MonoBehaviour
{
    public GameObject Curtains;
    public GameObject[] winningCombos;
    public GameObject turdObjects;
    public Animator duckReactionAnimator;

    void Start() {
        for (int i = 0; i < winningCombos.Length; i++) {
            winningCombos[i].SetActive(false);
        }
        turdObjects.SetActive(false);
        duckReactionAnimator.SetBool("LovelyReaction", false);
        duckReactionAnimator.SetBool("DisgustedReaction", false);
        StartCoroutine(ExampleCoroutine());
    }

    IEnumerator ExampleCoroutine() {
        yield return new WaitForSeconds(2);

        if (PickUpManager.generatedComboNumber != -1) {
            duckReactionAnimator.SetBool("LovelyReaction", true);
            winningCombos[PickUpManager.generatedComboNumber].SetActive(true);
        }
        else {
            duckReactionAnimator.SetBool("DisgustedReaction", true);
            turdObjects.SetActive(true);
        }

        for (int i = 0; i < 350; i++)
        {
            if (i == 100) {
                foreach (Rigidbody r in turdObjects.GetComponentsInChildren<Rigidbody>()) {
                    r.isKinematic = false;
                }
            }
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
