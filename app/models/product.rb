class Product < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

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
end

