class OrdersController < ApplicationController
  protect_from_forgery except: :create

  def create
    @blog = Blog.find(params[:blog_id])

    @blog.orders.create!
    redirect_to Blog
  end
end
