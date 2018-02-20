def one_time_on_array (array)
  array.find_all{|i| array.count(i)==1}
end
a=[1,1,2,2,3,4,5]
puts one_time_on_array a
