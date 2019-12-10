class Productsimage < ApplicationRecord
  validates :product_id, presence: true
  validates :image, presence: true
  belongs_to :products, foreign_key: true
end
