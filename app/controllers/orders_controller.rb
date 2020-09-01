class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def update
    if @order.update()
      redirect_to @order, notice: 'Your order has been successfully done!'
    else
      render :edit
    end
  end

  private

  # def order_params
  #   params.require(:order).permit(:name, :photo)
  # end
end
