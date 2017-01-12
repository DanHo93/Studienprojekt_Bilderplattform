'use strict';

document.addEventListener("DOMContentLoaded", init);

function init(){
    document.getElementById("inputUpload").addEventListener('change', loadImage);
}

//#####################################################################################
//Extern Code
//#####################################################################################
/*
loadImage -> Ist ein Bild (Image-Datei) im Input-Feld ausgewählt? -> Wird als Vorschau angezeigt
http://stackoverflow.com/questions/4459379/preview-an-image-before-it-is-uploaded
Code-Beispiel:
http://jsfiddle.net/LvsYc/
Code wurde den Anforderungen angepasst
*/
function loadImage(event) {
    if (event.target.files && event.target.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            document.getElementById("vorschaubild").setAttribute("src", e.target.result);
        }

        reader.readAsDataURL(event.target.files[0]);
    }
}