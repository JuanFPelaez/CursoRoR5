def murcielago frase
  murcielago_dict=Hash["M",0,"U",1,"R",2,"C",3,"I",4,"E",5,"L",6,"A",7,"G",8,"O",9]
  frase.split("").inject("") do |r,i|
    r<<murcielago_dict[i] if murcielago_dict.keys.include? i
    r<<i unless murcielago_dict.keys.include? i
  end
end

puts murcielago "POTATOMAN"
