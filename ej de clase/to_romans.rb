           #special cases
#1  ->  I   4  ->  IV
#5  ->  V   9  ->  IX
#10 ->  X   40 ->  XL
#50 ->  L   90 ->  XC
#100 -> C   400->  CD
#500 -> D   900->  CM
#1000-> M
class Integer
  def to_romans
    puts "Número inválido" unless to_romans_rango?self
    #r es el resultado
    r=[]
    #empezamos izquierda?
    #si length == 4 hacer millares 1,2 o 3-> M,MM,MMM
    #si empezamos por unidades podemos ir haciendo %10
    #empezamos unidades, casos
    #1->I 4->IV 5->V 9->IX --> rango 1-3: I,II,III; 4:IV; 5:V; 6-8:VI,VII,VIII, 9:IX
    #cogemos unidades: modulo 10, decenas modulo 10², centenas 10³, millares 10⁴
    units = self%10**1
    units.times do r<<'I'end if units<4
    r<<'IV' if units==4
    r<<'V' if units==5
    if units>5 && units<9
      r<<'V'
      (units-5).times do r<<'I'end
    end
    r<<'IX' if units==9

    r.join("")
  end
  def to_romans_rango? int
    int<4000 && int>=1
  end
end
n=1
9.times do
  puts n.to_romans
  n+=1
end
