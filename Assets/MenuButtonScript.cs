using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

[RequireComponent(typeof(AudioSource))]


public class MenuButtonScript : MonoBehaviour
{
<<<<<<< Updated upstream
    public void PlayGame()
    {
        SceneManager.LoadScene("RonaldTestScene");
=======
    public AudioClip click;
    public AudioClip clickQuit;
    AudioSource audioSourceClick;


    private void Awake()
    {
        audioSourceClick = GetComponent<AudioSource>();
    }

public void PlayGame()
    {

        audioSourceClick.PlayOneShot(click, 1);
        SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
        
>>>>>>> Stashed changes
    }

    public void ReplayGame()
    {
        SceneManager.LoadScene("MainMenu");
    }

    public void QuitGame ()
    {
        audioSourceClick.PlayOneShot(clickQuit, 1);
        Debug.Log("Quit!");
        Application.Quit();
    }

}
