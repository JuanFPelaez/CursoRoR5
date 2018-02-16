class Color
  attr_accessor :r
  attr_accessor :g
  attr_accessor :b

  def initialize (red,green,blue)
    @r=red
    @g=green
    @b=blue
  end

  def brillo
    (299*r+587*g+114*b)/1000
  end

  def diferencia_brillo color2
    (brillo-color2.brillo).abs
  end
  def diferencia_matiz color2
    (r-color2.r).abs+(g-color2.g).abs+(b-color2.b).abs
  end
  def contraste color2
    s = diferencia_brillo(color2)>125&&diferencia_matiz(color2)>500 ?
    "Hay suficiente contraste" : "No hay suficiente contraste"
  end
end

c1=Color.new(42,21,58)
c2=Color.new(240,41,25)
c3=Color.new(42,42,42)
c4=Color.new(210,210,210)
#puts c1.brillo
#puts c2.brillo
#puts c1.diferencia_brillo(c2)
#puts c1.diferencia_matiz(c2)
def test c1,c2
  puts "#{c1.contraste(c2)} entre Color1: (#{c1.r}, #{c1.g}, #{c1.b}) y Color2: (#{c2.r}, #{c2.g}, #{c2.b})"
end
test c1,c2
test c3,c4
