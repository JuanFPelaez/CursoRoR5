class StoreController < ApplicationController
  def index
    @products = Product.order(:title) #Obtenemos los productos ordenados por título
  end
end
