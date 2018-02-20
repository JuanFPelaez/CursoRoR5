def suma_cubos_rango (inferior,superior)
  #rango = (inferior..superior).to_a
  #rango.inject {|accumulator, iterated| accumulator += iterated**3 }
  (inferior..superior).to_a.inject {|accumulator, iterated| accumulator += iterated**3 }
end

r1 = 1
r2 = 3

puts suma_cubos_rango r1, r2
