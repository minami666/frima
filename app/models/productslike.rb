class Productslike < ApplicationRecord
  validates :product_id, presence: true

  belongs_to :product, foreign_key: true
  belongs_to :user, foreign_key: true
end
