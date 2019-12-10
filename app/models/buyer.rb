class Buyer < ApplicationRecord
  validates :product_id, presence: true
  validates :user_id, presence: true
  validates :buyer_evaluate_id, presence: true

  belongs_to :product, foreign_key: true
  belongs_to :user, foreign_key: true
  has_one :buyer_evaluate, dependent: :destroy
end
