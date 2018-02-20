def array_of_fixnum? (array)
  array.all? {|x| x.is_a? Integer}
end

puts array_of_fixnum? [1,2,3,4]
puts array_of_fixnum? [1,2,3,"4"]
