def suma_cubos_rango (inferior,superior)
  #rango = (inferior..superior).to_a
  #rango.inject {|accumulator, iterated| accumulator += iterated**3 }
  (inferior..superior).to_a.inject {|accumulator, iterated| accumulator += iterated**3 }
end

def main
	puts "\r\nIntroduce el límite inferior del rango de numeros para calcular la suma de los cubos"
  m=gets.chomp.to_i 	#leer de teclado
	if m<1
		puts "\r\nDato erróneo\n\r"
		main
	else
		puts "\r\nIntroduce el límite superior del rango de numeros para calcular la suma de los cubos\r\n\r\n"
		n=gets.chomp.to_i		#guardamos en n el dato de entrada de teclado como int
		if n < m
			puts "\r\nDato erróneo\n\r"
			main
		else
			puts "\r\nLa suma de los cubos de los numeros en el rango es: #{suma_cubos_rango m,n}"
		end
	end
end

main
