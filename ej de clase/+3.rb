def sum_odd_even i
  odd=0
  even=0
  n=1
  i.times do
    odd+=n if n%2==1
    even+=n if n%2==0
    n+=1
  end
  puts "La suma de impares es: #{odd}"
  puts "La suma de pares es: #{even}"
end

sum_odd_even 5
