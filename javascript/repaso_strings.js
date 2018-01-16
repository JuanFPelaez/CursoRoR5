var text = prompt("Introduce el texto text");
/*
//primera mitad
alert(text.substr(0,Math.ceil((text.length)/2)));
//ultimo caracter
alert(text[(text.length)-1]);
//en forma inversa
alert(text.split("").reverse().join(""));
//caracteres separeados por guion
alert(text.split("").join("-"));
//cantidad de vocales
*/
var regexp = /[a,e,i,o,u]/gi; //expresion regular: /g no se para al encontrar la primera coincidencia, /i ignora mayuscula /gi ambas cosas
var vowels = text.match(regexp).length;
//alert("Hay "+vowels+" vocales.");
//cantidad de consonantes
var consonants = (text.split("").length)-vowels;
alert("Hay "+consonants+" consonantes.");