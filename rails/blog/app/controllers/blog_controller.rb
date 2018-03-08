class BlogController < ApplicationController
  def index
    @posts = Post.order(:date) #ordenados por fecha
  end
end
