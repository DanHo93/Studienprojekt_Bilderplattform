'use strict';

window.addEventListener("DOMContentLoaded", init);

//Zählervariable für Schleifen
var i;

function init(){
    document.getElementById("loginLink").addEventListener("click", toggleLoginAndRegistrierung);
	document.getElementById("registrierungLink").
        addEventListener("click",toggleLoginAndRegistrierung);
    
    //Zuweisen der EventListener zu den CloseButtons der Popups
    for(i = 0; i < document.getElementsByClassName("popupclose").length; i++)
        document.getElementsByClassName("popupclose")[i].addEventListener("click", hideLoginRegistrierung);
}

function toggleLoginAndRegistrierung(event){
    var showElement;
    var hideElement;
    
    //Initialisieren/Zuweisen des Show und Hide Elements
    if(event.target.id == "loginLink"){
        showElement = document.getElementById("popup");
        hideElement = document.getElementById("registrierungpopup");
    }
    else if(event.target.id == "registrierungLink"){
        showElement = document.getElementById("registrierungpopup");
        hideElement = document.getElementById("popup");
    }
    
    //Abfragen der unterschiedlichen Status der Elemente mit jeweiligem Klassenwechsel
    //ShowElement anzeigen
    if(showElement.className == "hidden" && hideElement.className == "hidden"){
        showElement.className = "show";
    }
    //ShowElement anzeigen, HideElement verstecken
    else if(showElement.className == "hidden" && hideElement.className == "show"){
        showElement.className = "show";
        hideElement.className = "hidden";
    }
    //ShowElement verstecken
    else if(showElement.className == "show" && hideElement.className == "hidden"){
        showElement.className = "hidden";
    }
    //Sollte Nie eintreffen, aber für den Fall der Fälle, werden beide Elemente versteckt
    else{
        hideLoginRegistrierung();
    }
}

function hideLoginRegistrierung(){
    document.getElementById("popup").className = "hidden";
    document.getElementById("registrierungpopup").className = "hidden";
}