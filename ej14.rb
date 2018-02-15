def permutations_array array
  n_of_combinations=array.length==3 ? 6 : 24
  r=[]
  r<<array.shuffle while r.uniq.size != n_of_combinations
#con un loop do, usar while es mucho mas comodo, todo en una linea, se lee mejor
#  loop do
#    break if (array.length==3 && r.uniq.length == 6) || (array.length==4 && r.uniq.length == 24)
#  end
  r.uniq.each_slice(3) do |x,y,z|
    p [x,y,z]
  end
end

def main
	puts "Introduce un número de 3 o 4 dígitos para encontrar sus permutaciones"
  m=gets.chomp 	#leer de teclado
	if m.to_i>9999||m.to_i<100
		puts "Dato erróneo. Pulsa 'Ctrl + C' para salir.\n\r"
		main
	else
	  permutations_array m.split("").to_a
	end
end

main
#ar=[1,2,3,4]
#puts permutations_array ar
