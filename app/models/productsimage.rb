class Productsimage < ApplicationRecord
  validates :products_id, presence: true
  validates :image, presence: true
  belongs_to :products, foreign_key: true
end
