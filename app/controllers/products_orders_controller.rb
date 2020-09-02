class ProductsOrdersController < ApplicationController

  # THIS CODE ALLOWS US THAT WHEN SOMEONE BUY A PRODUCT, IN THE
  # INDEX HE ONLY HAS ACCESS TO THE ARTICLES FROM THE SAME SELLER
  def create
    @product_order = ProductOrder.new(product_order_params)
    @product_order.product_id = params[:product_id]
    redirect_to products_path, seller: @product_order.product.user
  end
end
