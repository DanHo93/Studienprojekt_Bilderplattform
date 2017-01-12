'use strict';

document.addEventListener("DOMContentLoaded", init);

//Slide-Array, 1. Dimension = die verschiedenen sections, 2. Dimension = Bilder in der section
var slides, slideIndex;
//Schleifenzähler
var i, k;

function init(){
    //Initialisieren Slides-Array
    slides = [], slideIndex = [];
    
    //Befüllen vom Slides-Array mit den verschiedenen img aus den sections
    //1. img jeder section wird angezeigt, der rest nicht
    //slides.length / 3, weil aktuell jeder container 3 images erhält
    for(i = 0; i < (document.getElementsByClassName("slides").length / 3); i++){
        slides[i] = document.getElementsByClassName(i);
        slideIndex[i] = 0; 
        
        for(k = 0; k < 3; k++){
            if(k == 0)
                slides[i][k].className += " imgShow";
            else{
                removeClass(slides[i][k], " imgShow");
                slides[i][k].className += " imgHide";
            }
        }
    }
    
    for(i = 0; i < document.getElementsByClassName("prev").length; i++)
        document.getElementsByClassName("prev")[i].addEventListener("click", setSwitchButton);
    
    for(i = 0; i < document.getElementsByClassName("next").length; i++)
        document.getElementsByClassName("next")[i].addEventListener("click", setSwitchButton);
    
    window.setInterval(function(){document.getElementsByClassName("next")[0].click()}, 10000);
    window.setInterval(function(){document.getElementsByClassName("next")[1].click()}, 10000);
    window.setInterval(function(){document.getElementsByClassName("next")[2].click()}, 10000);
    window.setInterval(function(){document.getElementsByClassName("next")[3].click()}, 10000);
}

/**Click-Function für die SwipeButtons der Slideshows, versteck aktuelles Bild und zeigt Nächstes/Vorheriges Bild an
param1: ausgelöstes Event des jeweiligen HTML-Elements
*/
var setSwitchButton = function(event){
    var element = event.target;
    var value = element.getAttribute("value");

    //Aktuelles Bild verstecken
    removeClass(slides[value][slideIndex[value]], " imgShow");
    slides[value][slideIndex[value]].className += " imgHide";

    //Für den Previos-Button, runterzählen
    if(element.className.includes("prev")){
        if (slideIndex[value] === 0) {
            slideIndex[value] = slides[value].length - 1;
        } else {
            slideIndex[value]--;
        }
    }
    //Für den Next-Button, hochzählen
    else{
        if (slideIndex[value] === (slides[value].length - 1)) {
            slideIndex[value] = 0;
        } else {
            slideIndex[value]++;
        }
    }

    //Zeige Nächstes/Vorheriges Bild an
    removeClass(slides[value][slideIndex[value]], " imgHide");
    slides[value][slideIndex[value]].className += " imgShow";
}

/**
removeClass
param1: element = das HTML-Element, bei dem eine Klasse gelöscht werden soll
param2: elClass = String Angabe der zu löschenden Klasse, bspw. " imgHide"
*/
var removeClass = function(element, elClass){
    element.className = element.className.replace( elClass, '' );
    //element.className = element.className + elClass;
}