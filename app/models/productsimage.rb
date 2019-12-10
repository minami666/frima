class Productsimage < ApplicationRecord
  validates :product_id, presence: true
  validates :image, presence: true

  belongs_to :product, foreign_key: true
end
