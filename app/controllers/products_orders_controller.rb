class ProductsOrdersController < ApplicationController
  def create
    @product_order = ProductOrder.new(product_order_params)
    @product_order.product_id = params[:product_id]
      redirect_to products_path, seller: @product_order.product.user
  end
end
