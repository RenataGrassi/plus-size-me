class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def update
  end
end



# products >> product_order (add to card functionality) >> order (shopping card)
# CRUD finished on wednesday night + homepage + idealy the add to card
