#ej11.rb
#comprobar si un numero es Kaprekar
#o es si la suma de las cifras del número elevado a 2
#es igual al número
#297^2 = 88209 y 88+209 = 297 (genéricamente es que un numero de n cifras lo es
#si al hacer el cuadrado y sumamos los n dígitos de la derecha con los n o n-1
#dígitos de la izquierda del resultado devuelve el número)
def kaprekar n
	if n.is_a?(String) 	#si recibimos dato como string pasamos a int
		n=n.to_i
	end
	c=(n**2).to_s 			#elevar al cuadrado y pasar a string
	l=n.to_s.length
	#debugging
	#puts "longitud del dato: #{l=n.to_s.length}"
	#puts "dato al cuadrado: #{c}"
	a=c.slice(0,c.length-l)	#dividimos la string en las 2 partes para sumar
	b=c.slice(c.length-l,l)
	n.to_i==a.to_i+b.to_i		#comprobamos finalmentes si se cumple kaprekar
	#puts "#{a}+#{b} = #{sol}"
end

def main
	puts "Introduce el límite inferior del rango de numeros para comprobar si son kaprekar"
  m=gets.chomp.to_i
	puts "Introduce el límite superior del rango de numeros para comprobar si son kaprekar"
	n=gets.chomp.to_i		#guardamos en n el dato de entrada de teclado como int
	#n=n.to_i
	if n>=1		#solo hacemos cuentas si recibimos al menos un 1
		a=[]
		i=m
		n.times do
			if (kaprekar i) then a<<i end
			i+=1
		end
		if a.length > 0 #comporbamos que haya al menos un resultado positivo
			puts "En el rango #{m}-#{n} los números #{a} son Kaprekar"
		else
				puts "Ningún numero del rango #{m}-#{n} es Kaprekar"
		end
	else
	  puts "El número introducido es inválido \n\r"
		main
	end
end

main
