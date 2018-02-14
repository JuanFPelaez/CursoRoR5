=begin
		Hacer un método que recibe una sentencia y devuelve
		true si es un palindromo (ignoramos espacios y
		mayusculas/minusculas). El método reverse de
		cadenas puede ser util.
=end

def		palindromo?(sentence)

	# 	eliminamos todos los espacios introducidos en 'sentence'
		downcase_stripped_sentence =  sentence.downcase.gsub(" ", "")

	#	comparamos el contenido introducido en 'sentence' con el el mismo contenido invertido,
	#   porque los palíndromos  son aquellos que da igual leer de izquierda a derecha o viceversa
		downcase_stripped_sentence == downcase_stripped_sentence.reverse
end