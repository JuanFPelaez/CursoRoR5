var data = [
	{'titulo' : 'Item 1', 'contenido':'Contenido del item 1'},
	{'titulo' : 'Item 2', 'contenido':'Contenido del item 2'},
	{'titulo' : 'Item 3', 'contenido':'Contenido del item 3'},
	{'titulo' : 'Item 4', 'contenido':'Contenido del item 4'},
	{'titulo' : 'Item 5', 'contenido':'Contenido del item 5'},
];

//pintar en el html, con jquery, lista de enlaces, donde titulo es el texto del enlace y contenido el destino del enlace
$(document).ready(function () {
	paintLinks("body");
});

function paintLinks(target){
	$(target).append(template_lista(data));
}
function assignListenerEvents(){
	$('ul').on('click','a',function(event){
		var id_item = $(event.target).attr('data-id');
		$('.contenidos').append(data[id_item].contenido);
	});
}
function template_li(link_title,index){
	return '<li><a href="#" id-item="'+index+'">'+link_title+'</a>';
}
function template_lista(data){
	var long = data.length;
	var res = '<ul>';
	for (var i=0;i<long;i++){
		res += template_li(data[i].titulo);
	}
	return res + '</ul>';
}
function templateData(data){
	return '<span>'+data+'</span>';
}
