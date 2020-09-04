class OrdersController < ApplicationController
  def index
  end

  def orders
    @orders = Order.all
    @products = Product.all
  end
end
