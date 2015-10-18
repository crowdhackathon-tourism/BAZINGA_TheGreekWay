using UnityEngine;
using System.Collections;
using UnityEngine.EventSystems;

public class DragHandlerer : MonoBehaviour,IBeginDragHandler,IDragHandler, IEndDragHandler {

	public static GameObject itemBeingDragged;
	Vector3 startPos;
	Transform startParent;
	public AudioClip clipSoundOne;
	public AudioClip clipSoundTwo;
	private AudioSource source;

	#region IBeginDragHandler implementation
	public void OnBeginDrag (PointerEventData eventData)
	{	
		source=GetComponent<AudioSource>();
		source.PlayOneShot (clipSoundOne,0.7f);
		itemBeingDragged = gameObject;
		startPos = transform.position;
		startParent = transform.parent;
		GetComponent<CanvasGroup> ().blocksRaycasts = false;
	}
	#endregion

	#region IDragHandler implementation

	public void OnDrag (PointerEventData eventData)
	{
		transform.position = Input.mousePosition;
	}

	#endregion

	#region IEndDragHandler implementation

	public void OnEndDrag (PointerEventData eventData)
	{	
		source.PlayOneShot (clipSoundTwo,0.7f);
		itemBeingDragged = null;
		GetComponent<CanvasGroup> ().blocksRaycasts = true;
		if (transform.parent == startParent) {
			transform.position = startPos;
		}
	}

	#endregion

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
