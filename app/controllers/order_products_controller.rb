class OrderProductsController < ApplicationController
  def create
    order = current_user.orders.find_or_create_by(
        status: false
      )

    @product = Product.find(params[:product_id])

    @order_product = OrderProduct.new
    @order_product.order = order
    @order_product.product = @product

    authorize @order_product

    if @order_product.save
      redirect_to products_path
    end
  end

  def destroy
    order_product = OrderProduct.find(params[:id])
    authorize order_product
    @product = order_product.product
    order_product.destroy
    redirect_to products_path

  end
end
