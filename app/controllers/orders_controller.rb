class OrdersController < ApplicationController

  def index
    @orders = current_user.orders
  end

  def new
  end

  def create
  end

  def destroy
    # NOT SURE ABOUT THIS ONE
    @order.destroy
    redirect_to products_path
  end
end

# products >> product_order (add to card functionality) >> order (shopping card)
# CRUD finished on wednesday night + homepage + idealy the add to card
