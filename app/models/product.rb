class Product < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :orders, dependent: :nullify

  GENDER = ["feminine", "masculine"]
  SIZE = ["L", "XL", "XXL", "XXXL"]
  CATEGORY = ["shirts", "pants", "dresses", "skirts", "shoes", "jackets"]

  include PgSearch::Model
  pg_search_scope :product_search,
    against: [ :name, :brand ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

  validates :name, :photo, :gender, :size, :category, :price, presence: true
  validates :gender, inclusion: { in: GENDER }
  validates :size, inclusion: { in: SIZE }
  validates :category, inclusion: { in: CATEGORY }

  def is_it_in_the_shopping_cart?(user)
    cart = user.orders.find_by(status: false)

    if cart
      OrderProduct.find_by(order: cart, product: self).present?
    else
      false
    end
  end

  def cart_product(user)
    cart = user.orders.find_by(status: false)

    if cart
      OrderProduct.find_by(order: cart, product: self)
    else
      nil
    end

  end

end

