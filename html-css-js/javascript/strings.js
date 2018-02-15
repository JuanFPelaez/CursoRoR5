/*
//pedir edad y alamacenar en mayusculas
var name = prompt("Introduce Nombre y Apellidos");
name = name.toUpperCase();
//pedir edad
do {
var age = prompt("Introduce la edad");
}while (!testAge(age));
*/
//pedir DNI en formato 00000000X
do{
	var dni = prompt("Introduce el DNI (formato 00000000X)");
	msg=parseDni(dni);
}while();//mientras mensaje tenga contenido
----------------------------------------------------------
function testIfNumber(number){
	return (!isNaN(parseInt(number)));
}
function testAge(number){
	return(testIfNumber(number) && number>0 && number<150);
}
function parseDni(data){
	//cada fallo rellenar msg con el mensaje de error
	var msg = "Bien";
	//mirar longitud de la string
	if (!testDniLength(data)){
		msg="\nError: longitud incorrecta del DNI";
		return msg;
	}
	//separar ultimo valor
	var nDni = data.substring(0,8);
	var lDni = data.substring(8,9);
	//mirar si nDni es numero y valido y lDNi es letra
	if(!testDniNumber(nDni) || !testIfLetter(lDni)){
		msg="\nError: formato incorrecto del DNI";
		return msg;
	}
	return msg;
}
function testDniLength(data){
	return((data.length)==9);
}
function testIfLetter(data){
	return(/^[a-z]+$/i.test(data));
}
function testDniNumber(data){
	return(testIfNumber(data)&&(data>=0)&&data<=99999999);
}
//una vez pasado los test usar push para meter en el array de cliente y luego push para meter el cliente en el array de clientes
// cuando funcione usando arrays intentar hacerlo usando objeto cliente, comprobar que los datos son validos antes de hacer el push al array de objetos