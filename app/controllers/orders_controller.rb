class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def update
  end
end
