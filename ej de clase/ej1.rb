class Calculadora
  def initialize (a,b,options = {:add => true})
    @a = a
    @b = b
    @o=options
  end

  def add
    @a + @b
  end

  def substract
    @a - @b
  end

  def operate ()
    @o[:add] ? @a+@b : @a-@b
  end
end
p1=9
p2=3
operation={:add => true}
c=Calculadora.new(p1,p2)
c_o=Calculadora.new(p1,p2,operation)
r_o=Calculadora.new(p1,p2,operation:"substract")
puts "#{p1} + #{p2} = #{c_o.operate}"
puts "#{p1} - #{p2} = #{r_o.substract}"
