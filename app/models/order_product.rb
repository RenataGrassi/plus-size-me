class OrderProduct < ApplicationRecord
  belongs_to :product
  belongs_to :order

  def self.from_order_of(user)
    cart = user.orders.find_by(status: 'open')
  end
end

#OrderProduct.from_order_of(current_user)

