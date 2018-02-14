#ej7.rb
#comprobar si la cadena de texto es un palindromo, se lee igual comenzando por el principio que por el final
def palindromo? sentence
	sentence.downcase.gsub(" ","")reverse==sentence.downcase.gsub(" ","")
end