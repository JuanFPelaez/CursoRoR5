class BlogController < ApplicationController
  skip_before_action :authorize
  def index
    @posts = Post.order(:date) #ordenados por fecha
  end
end
