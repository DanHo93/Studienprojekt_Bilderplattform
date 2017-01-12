'use strict';

document.addEventListener("DOMContentLoaded", init);

//imgArray -> 1. Dimension = Kategorie-Container, 2. Dimension = HTML-Images im Kategorie-Container
//addedZaehler -> der Images pro Kategorie-Container
//superArray -> unter jedem Container kann ein Image als "Super-Image" in groß angezeigt werden
var imgArray, addedZaehler, superArray; 
var i, k; //Zählervariablen für diverse Schleifen, etc.
//enthält das HTML-Element der zuletzt/aktuell benutzten <section>, zum Bild weiterklicken mit Pfeiltaste "links" (keyCode 37) und "rechts" (keyCode 39)
var focusImage;

//Init
function init(){
    //Initialize
    imgArray = [], addedZaehler = [], superArray = [];
    focusImage = null;
    
    for(i = 0; i < document.getElementsByClassName("slideContainerImages").length; i++){
        imgArray[i] = document.getElementsByClassName("slideContainerImages")[i];
        document.getElementsByClassName("slideContainerImages")[i].addEventListener("scroll", scrolled);
        addedZaehler[i] = 0;
        superArray[i] = null;
    }

    addInitialImages();
    window.addEventListener("resize", scrolled);
    window.addEventListener("keydown", keyDown);
}

//Fügt die ersten Images als Initialanzeige ein, mindestens 4, aber genug, dass der ganze Bildschirm + (1 bis 2) weitere Bilder ausgefüllt ist
function addInitialImages(){
    for(i = 0; i < imgArray.length; i++){
        for(k = 0; k < 20; k++){
            addImage(i);
        }
    } 
}

/**
addImage -> Fügt ein weiteres Bild im jeweiligen Kategorie-Container hinzu
*/
var addImage = function(sectionNumber){
    var neu = new Image();
    neu.className = "containerImg";
    neu.setAttribute("alt", ++addedZaehler[sectionNumber]);
    neu.setAttribute("id", "section" + sectionNumber + " img" + addedZaehler[sectionNumber]);
    neu.src = "../IMG/Beispielbilder/" + addedZaehler[sectionNumber] + ".jpg";
    neu.addEventListener("click", openImage); //sectionNumber

    //imgArray[sectionNumber].push(neu) - Hat hier nicht funktioniert !?
    addArrayElement(imgArray[sectionNumber], neu);
    document.getElementsByClassName("slideContainerImages")[sectionNumber].appendChild(neu);
};

/**
Scrolled() -> wird im Kategorie-Container beim scroll-Event aufgerufen, überprüft ob das vorletzte Img-Element des Containers vollständig "sichtbar" ist, wenn ja, wird ein weiteres Img-Element geladen
*/
function scrolled(event){  
    var visible = visibleX(event.target.childNodes[event.target.childElementCount-2]);
    
    if(visible)
        addImage(getIndexOfClassElement(event.target, "slideContainerImages"));
}

/**
openImage -> öffnet, wechselt bzw. schließt ein angeklicktes Image, als großes Super-Image
*/
function openImage(event){
    var containerIndex = getIndexOfClassElement(event.target.parentNode, "slideContainerImages");
    var samePicture = false;
    
    //If == true, wenn bereits ein "Super-Image" des Containers geöffnet ist, dieses wird dann gelöscht
    if(superArray[containerIndex] != null){        
        document.getElementsByClassName("slideContainerImages")[containerIndex].parentNode.removeChild(document.getElementsByClassName("slideContainerImages")[containerIndex].nextSibling);
        
        //If == true, wenn das angeklickte Bild gleich dem Super-Image ist
        if(superArray[containerIndex].getAttribute("id") === event.target.getAttribute("id") + "super"){
            samePicture = true;
        }
        
        superArray[containerIndex] = null;
    }
    
    if(!samePicture){
        //Das Neue Super-Image laden
    superArray[containerIndex] = event.target.cloneNode();
    superArray[containerIndex].setAttribute("id", superArray[containerIndex].getAttribute("id") + "super");
    superArray[containerIndex].className = "super";

    //Füge Super-Image unter dem jew. Container an
    insertAfter(document.getElementsByClassName("slideContainerImages")[containerIndex], superArray[containerIndex]);
    }
    
    focusImage = superArray[containerIndex];
}

/**
getIndexOfClassElement -> Gibt den Index des jeweiligen Elements innerhalb seiner Klasse an, den Index von getElementsByClassName
*/
var getIndexOfClassElement = function(element, klasse){
    for(i = 0; i < document.getElementsByClassName(klasse).length; i++){
        if(document.getElementsByClassName(klasse)[i] === element)
            return i;
    }
    return -1;
}

/**
addArrayElement -> Fügt am Ende des übergebenen Array das übergebene Element an, vergleichbar mit array.push();
*/
var addArrayElement = function(array, element){
    array[array.length] = element;
}

var keyDown = function(event){
    //Vorheriges Bild öffnen
    if(event.keyCode == 74 && focusImage != null){
        switchImage("previous");
    }
    
    //Nächstes Bild öffnen
    if(event.keyCode == 75 && focusImage != null){
        switchImage("next");
    }
}

/**
switchImage -> Wechselt das aktuelle "Super-Image" zum Vorherigen/Nächsten
*/
var switchImage = function(direction){
    var imageId = focusImage.id.replace("super", "");
    var sectionId = imageId.substring(7, 8);
    imageId = imageId.substring(12, imageId.length);
    
    //Löschen des aktuellen Super-Image der jeweiligen Section
     document.getElementById(focusImage.id).parentNode.removeChild(document.getElementById(focusImage.id));

    if(direction == "previous" && imageId > 0){
        imageId -= 1;
    }
    if(direction == "next"){
        imageId -= -1;
    }
    
    //Super-Image ins Array kopieren und Klasse sowie ID setzen
    superArray[sectionId] = document.getElementById(focusImage.id.substring(0,12) + imageId).cloneNode();
    superArray[sectionId].className = "super";
    superArray[sectionId].setAttribute("id", superArray[sectionId].getAttribute("id") + "super")
    
    //Neues Super-Image dem HTML hinzufügen
    insertAfter(document.getElementsByClassName("slideContainerImages")[sectionId], superArray[sectionId]);
    
    //Neues Super-Image im Focus setzen
    focusImage = superArray[sectionId];
}

//#####################################################################################
//Extern Code
//#####################################################################################
/*
visibleX -> Ist ein Element aktuell im horizontalem Bereich angezeigt?
http://stackoverflow.com/questions/487073/check-if-element-is-visible-after-scrolling
Code-Beispiel:
http://jsfiddle.net/W33YR/411/
Code wurde den Anforderungen angepasst
*/
var visibleX = function(el){
  var rect = el.getBoundingClientRect(), left = rect.left, width = rect.width, 
    el = el.parentNode;
  do {
    rect = el.getBoundingClientRect();
    if (left <= rect.right === false) return false;
    // Check if the element is out of view due to a container scrolling
    if ((left + width) <= rect.left) return false
    el = el.parentNode;
  } while (el != document.body);
  // Check its within the document viewport
  return left <= document.documentElement.clientWidth;
};

/*
insertAfter -> Änhlich der Function 'insertBefore', nur das nach dem Element etwas angefüngt wird
http://stackoverflow.com/questions/4793604/how-to-do-insert-after-in-javascript-without-using-a-library
Code-Beispiel:
http://jsfiddle.net/UqDJk/
*/
function insertAfter(referenceNode, newNode) {
    referenceNode.parentNode.insertBefore(newNode, referenceNode.nextSibling);
}