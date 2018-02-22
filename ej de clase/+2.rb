def divisibles low,sup,div
  n=low.to_i
  (sup.to_i-n+1).times do
    puts n if n % div.to_i==0
    n+=1
  end
end
puts "Introduce el rango inferior, superior y el divisor"
divisibles gets.chomp,gets.chomp,gets.chomp
