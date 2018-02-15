=begin
		Crear un método que acepte un String reordene las palabras en
		orden ascendente por longitud (no habrá simbolos de puntuación y
		todas las palabras estarán separadas por espacios). Para ordenar
		un array se puede utilizar el método sort (buscar documentación).
		Para generar un string a partir de un array existe el método join.
=end

def		sort_string(string)
		string.split(" ").sort{|x, y| x.length <=> y.length}.join(" ")
end