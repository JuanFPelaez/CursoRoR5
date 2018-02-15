=begin
		Dada una sentencia que contiene varias palabras, calcular la
		frecuencia de otra palabra dada en esa secuencia. El método por
		tanto recibirá dos Strings (sentencia, palabra). El método
		Array#count cuenta la frecuencia de un elemento en un array:
		[9,3,4,9,5].count(9) devolvera 2.
=end

def find_frequency(sentence, word)
	sentence.downcase.split.count(word.downcase)
end