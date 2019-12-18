class Seller < ApplicationRecord
  validates :products_id, presence: true
  validates :users_id, presence: true
  validates :seller_evaluates_id, presence: true

  #belongs_to :product, foreign_key: true
  belongs_to :user, foreign_key: true
  belongs_to :product,foreign_key: true
  has_one :buyer_evaluate, dependent: :destroy
end
