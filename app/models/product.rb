class Product < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  GENDER = ["feminine", "masculine"]
  SIZE = ["L", "XL", "XXL", "XXXL"]
  CATEGORY = ["shirts", "pants", "dresses", "skirts", "shoes", "jackets"]


  validates :name, :photo, :gender, :size, :category, :price, presence: true
  validates :gender, inclusion: { in: GENDER }
  validates :size, inclusion: { in: SIZE }
  validates :category, inclusion: { in: CATEGORY }
end

