using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MenuButtonScript : MonoBehaviour
{
    public void PlayGame()
    {
        SceneManager.LoadScene("RonaldTestScene");
    }

    public void ReplayGame()
    {
        SceneManager.LoadScene("MainMenu");
    }

    public void QuitGame ()
    {
        Debug.Log("Quit!");
        Application.Quit();
    }

}
