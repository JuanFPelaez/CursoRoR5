var fuente = prompt("Introduce el texto fuente");
var clave = prompt("Introduce la clave");
pos = fuente.indexOf(clave);
if (pos==-1){alert("La clave no está en la fuente.")}
else alert("La clave: "+clave+" está en la posición "+pos+" de la cadena: "+fuente);
