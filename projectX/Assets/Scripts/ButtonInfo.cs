using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class ButtonInfo : MonoBehaviour {

	//public int IDPage;
	public Transform otherPage;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public void callPage(){
		otherPage.localPosition = new Vector3 (0,0,0);
		transform.parent.parent.localPosition = new Vector3 (0,1000,0);

	}
}
