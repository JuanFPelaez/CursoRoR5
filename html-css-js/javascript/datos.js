/*
var data = [
	{'titulo' : 'Item 1', 'contenido':'Contenido del item 1'},
	{'titulo' : 'Item 2', 'contenido':'Contenido del item 2'},
	{'titulo' : 'Item 3', 'contenido':'Contenido del item 3'},
	{'titulo' : 'Item 4', 'contenido':'Contenido del item 4'},
	{'titulo' : 'Item 5', 'contenido':'Contenido del item 5'},
];
*/

var data = [];

for (var i=0; i<5; i++){
	var m = new Modelo();
	m.configurar('Item '+i, 'Contenido del item '+i);
	datos.push(m);
}