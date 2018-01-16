//emails ver si tiene @ en la cadena
var text = prompt("Introduce el texto text");
if(text.indexOf('@')== -1)
	alert(text+" No es un email");
else alert (text+" si es un email");