'use strict';

window.addEventListener("DOMContentLoaded", init);

var passworttest;


function passwortpruefen(){
    if(document.getElementById('formPassword').value != document.getElementById('formPasswordRepeat').value){
        alert("Ihr Kennwort stimmt nicht überein");
    }
    else{
        alert("Ihr Kenntwort stimmt");
        passworttest = true;
    }
}	
	
function init(){
    passworttest = false;
	document.getElementById('buttonRegistrieren').addEventListener("click",passwortpruefen);
}