def length_strings_in_array_each array
  longitudes=[]
  array.each do |i|
    longitudes.push(i.length)
  end
  return longitudes
end

def length_strings_in_array_map array
  array.map { |i| i.length }
end

ar="Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit".split(" ")

puts (length_strings_in_array_map (ar)).join(" ")
