class Seller < ApplicationRecord
  validates :products_id, presence: true
  validates :users_id, presence: true
  validates :seller_evaluate_id, presence: true
end
