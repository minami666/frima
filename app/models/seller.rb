class Seller < ApplicationRecord
  validates :products_id, presence: true
  validates :users_id, presence: true
  validates :seller_evaluates_id, presence: true

  belongs_to :user,optional: true, foreign_key: true
  belongs_to :product,optional: true,foreign_key: true
end
