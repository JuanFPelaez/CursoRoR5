class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  def index
    @products = Product.order(:title) #Obtenemos los productos ordenados por título
  end
end
