def random_array (array,n)
  sol=[]
  n.times do
    sol.push array[rand(array.length)]
  end
  puts sol
end

ar=(1..10).to_a
n=5
random_array(ar,n)
