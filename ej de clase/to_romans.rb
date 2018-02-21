#notas para mejorar
#relacion entre el numero 10,100,500 y el valor X,C,D... -> hash clave,valor
#secciones con repeticion: III,XX,MMM, dividir entre el valor significativo
#rules
#1  ->  I   4  ->  IV
#5  ->  V   9  ->  IX
#10 ->  X   40 ->  XL
#50 ->  L   90 ->  XC
#100 -> C   400->  CD
#500 -> D   900->  CM
#1000-> M
class Integer #extendemos la clase de enteros
  def to_romans
    puts "Entero inválido" unless to_romans_rango?self
    #r es el resultado
    r=[]
    #no hace falta mirar length, n.times ya lo hace
    #unidades, casos
    #1->I 4->IV 5->V 9->IX --> rango 1-3: I,II,III; 4:IV; 5:V; 6-8:VI,VII,VIII, 9:IX
    #unidades: modulo 10, decenas k/10%10, centenas k/10²%10, millares k/10⁴%10
    thousands = self/1000%10
    thousands.times do r<<'M'end if thousands<4

    hundreds = self/100%10
    hundreds.times do r<<'C'end if hundreds<4
    r<<'CD' if hundreds==4
    r<<'D' if hundreds==5
    if hundreds>5 && hundreds<9
      r<<'D'
      (hundreds-5).times do r<<'C'end
    end
    r<<'CM' if hundreds==9

    dozens = self/10%10
    dozens.times do r<<'X'end if dozens<4
    r<<'XL' if dozens==4
    r<<'L' if dozens==5
    if dozens>5 && dozens<9
      r<<'L'
      (dozens-5).times do r<<'X'end
    end
    r<<'XC' if dozens==9

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

  def to_romans_v2
    puts "Entero inválido" unless to_romans_rango?self
    #r es el resultado
    r=[]
    #h es el hash de claves
    h=Hash[1000,'M',500,'D',100,'C',50,'L',10,'X',100,'C',5,'V',1,'I']
    h.each do |index, code????|
    r<<(self/1000).times h[1000]
    #unidades, casos
    #1->I 4->IV 5->V 9->IX --> rango 1-3: I,II,III; 4:IV; 5:V; 6-8:VI,VII,VIII, 9:IX
    #unidades: modulo 10, decenas k/10%10, centenas k/10²%10, millares k/10⁴%10
  end
end

def test
  i=3550
  n=i
  loop do
    puts "#{n} -> #{n.to_romans}"
    n+=1
    break if n==i+500
  end
end

def main
  loop do
    puts "Introduce un entero inferior a 4000 para pasar a romanos"
    puts "#{m=gets.chomp.to_i.to_romans_v2 unless m=='test'} \r\n\r\n"
    puts test if m=='test'
  end
end
main
#test
