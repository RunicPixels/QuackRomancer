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

    public void Start() {
        UpdateListItems();
    }

    public void AddPickUp(PickUp pickUp)
    {
        currentPickups.Add(pickUp);
        UpdateListItems();
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
}
