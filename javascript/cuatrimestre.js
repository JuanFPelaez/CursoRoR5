var fecha = new Date();
var meses = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"];
var dia = fecha.getDate();
if(dia<10){dia="0"+dia;}
var mes = fecha.getMonth();
var anno = fecha.getFullYear();
var hora = fecha.getHours();
if(hora<10){hora="0"+hora;}
var minuto = fecha.getMinutes();
if(minuto<10){minuto="0"+minuto;}
var segundo = fecha.getSeconds();
if(segundo<10){segundo="0"+segundo;}

switch (Math.ceil((mes+1)/3)) {
	case 1:
		var cuatri = "Q1";
		break;
	case 2:
		var cuatri = "Q2";
		break;
	case 3:
		var cuatri = "Q3";
		break;
	case 4:
		var cuatri = "Q4";
		break;
}
var mensaje = "Cuatrimestre: "+cuatri+"\r\nFecha: "+dia+"/"+meses[mes]+"/"+anno+"\r\nHora: "+hora+":"+minuto+":"+segundo;

alert(mensaje);