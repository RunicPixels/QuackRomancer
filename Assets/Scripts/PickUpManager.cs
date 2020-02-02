using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class PickUpManager : MonoBehaviour {
    public List<PickUp> currentPickups;

    public Transform spawnPoint;
    public PickUpManagerEntry itemPrefab;
    private List<GameObject> listItems = new List<GameObject>();
    public RectTransform content;
    public GameObject constructionPanel;
    public GameObject timer;
    public GameObject duck;
    private bool isInAssemblyMode;
    public AssemblyPosition assemblyBeak;
    public AssemblyPosition assemblyBody;
    public AssemblyPosition assemblyHead;
    public AssemblyPosition assemblyTail;
    public Transform hatLocation;
    public GameObject inventoryLocationHolder;
    private Transform[] inventoryLocations;
    private int lastAddedInventoryLocation = -1;
    public static string[] winningCombos = { "knife,bottle,football,fork", "screwdriver,teapot,guitar,twig", "knife,bottle,guitar,twig", "screwdriver,teapot,football,fork" };

    public static int generatedComboNumber = 1;

    public void Start() {
        inventoryLocations = inventoryLocationHolder.GetComponentsInChildren<Transform>();
        UpdateListItems();
    }

    public void AddPickUp(PickUp pickUp) {
        if (pickUp.pickupType == PickUp.PickupType.Hat) {
            pickUp.gameObject.SetActive(true);
            pickUp.transform.parent = hatLocation;
            pickUp.transform.position = hatLocation.position;
        }
        else {
            if (lastAddedInventoryLocation + 1 < inventoryLocations.Length) {
                pickUp.gameObject.SetActive(true);
                pickUp.transform.parent = inventoryLocations[lastAddedInventoryLocation + 1];
                pickUp.transform.position = inventoryLocations[lastAddedInventoryLocation + 1].position;
                lastAddedInventoryLocation++;
            }
            currentPickups.Add(pickUp);
            UpdateListItems();
        }
    }

    public void InventoryClicked(PickUp pickup) {
        switch (pickup.pickupType) {
            case PickUp.PickupType.Beak:
                assemblyBeak.SetPickup(pickup);
                break;
            case PickUp.PickupType.Body:
                assemblyBody.SetPickup(pickup);
                break;
            case PickUp.PickupType.Head:
                assemblyHead.SetPickup(pickup);
                break;
            case PickUp.PickupType.Tail:
                assemblyTail.SetPickup(pickup);
                break;
        }
    }

    private int IsWinningCombo() {
        if (ComboID() == null) {
            return -1;
        }
        for (int i = 0; i < winningCombos.Length; i++) {
            if (winningCombos[i].ToLower().Equals(ComboID().ToLower())) {
                return i;
            }
        }
        return -1;
    }

    private string ComboID() {
        if (assemblyBeak == null || assemblyBody == null || assemblyHead == null || assemblyTail == null) {
            return null;
        }
        return assemblyBeak?.pickup.pickupName + "," + assemblyHead?.pickup.pickupName + "," + assemblyBody?.pickup.pickupName + "," + assemblyTail?.pickup.pickupName;
    }

    public void RemovePickup(PickUp pickUp) {
        currentPickups.Remove(pickUp);
        UpdateListItems();
    }

    public void TimerIsOver() {
        timer?.SetActive(false);
        constructionPanel?.SetActive(true);
        duck?.SetActive(false);
        isInAssemblyMode = true;
    }

    private void UpdateListItems() {
        foreach (GameObject item in listItems) {
            Destroy(item);
        }
        listItems.Clear();

        for (int i = 0; i < currentPickups.Count; i++) {
            PickUpManagerEntry addedItem = Instantiate(itemPrefab, content.position - i * new Vector3(0 * content.lossyScale.x, 60 * content.lossyScale.y, 0 * content.lossyScale.z), Quaternion.identity, content);
            listItems.Add(addedItem.gameObject);
            addedItem.SetPickUp(currentPickups[i], this);
        }

        content.sizeDelta = new Vector2(0, currentPickups.Count * 60);
    }

    public void Generate() {
        if (isInAssemblyMode) {
            generatedComboNumber = IsWinningCombo();
            SceneManager.LoadScene("ResultsScreen");
        }
    }
}
