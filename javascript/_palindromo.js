var text = prompt("Introduce el texto text");
var l = text.length;
var inverse = text.split("").reverse();
/* intento de haver funcion reverse a mano problema al mostrar reverse
for (i=1; i<=l; i++){
	inverse[i] = text[l-i];	
	alert(inverse[i]+"-"+text[l-i]);
}
*/
if (text.localeCompare(inverse)) {
	alert(text+" sí es palíndromo.");
}
else
	alert(text+" No es palíndromo.");