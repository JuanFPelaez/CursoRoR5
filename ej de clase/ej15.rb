class Restaurante
  def initialize precios
    @restaurant_menu = precios
  end

  def coste (*pedidos)
    sum = 0
    pedidos.map do |i|
      i.map {|(food,quantity)| sum+=@restaurant_menu[food]*quantity}
    end
    puts sum
  end
end

precios = {:rice => 1, :noodles => 1}
menu1 = {:rice => 3, :noodles => 2}
menu2 = Hash[:rice,4,:noodles,5]

r=Restaurante.new(precios)
r.coste menu1
r.coste menu2
r.coste menu1,menu2
