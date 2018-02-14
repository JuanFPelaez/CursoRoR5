#Receives a string and sorts words separated by spacebar by word length

#def test
#	puts ex_sentence="La boca de mi gato huele a comida de gato"
#	puts sentence_sort(ex_sentence).join(" ")
#end
#test

def sentence_sort (sentence)
	sentence.split(" ").sort_by(&:length)
end
