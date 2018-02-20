class Restaurante
  #attr_accessor :rice
  def initialize menu
    @restaurant_menu = {}
    menu.each do |food, price|
      @restaurant_menu[food] = price
    end
  end

  def coste (*pedidos)
    #price=0
    #pedido.each do |food, quantity|
    #   price+=@restaurant_menu[food]*quantity
    #end
    #puts price

    #pedido.inject {|acc, i| acc += pedido[i]*@restaurant_menu[i]}

    pedidos.map {|acc, i|}
  end
end

precios = {:rice => 1, :noodles => 1}
menu1 = {:rice => 3, :noodles => 2}
menu2 = Hash[:rice,4,:noodles,5]

r=Restaurante.new(precios)
puts r.coste menu1
r.coste menu2
r.coste menu1,menu2
