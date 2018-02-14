def frecuencia_palabras(sentencia,palabra)
	sentencia.split(' ').count(palabra)
end
#def test()
#	puts "Test de la funcion 'frecuencia_palabras' \n "
#	frase="prueba de cuenta de aparicion de palabras"
#	busqueda="de"
#	puts "Hay la palabara '#{busqueda}' en la frase '#{frase}': #{frecuencia_palabras frase,busqueda} veces."
#	puts #{if (frecuencia_palabras frase,busqueda == 3) then "OK" else "ERROR" end}
#end
#test