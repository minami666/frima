class SellerEvaluate < ApplicationRecord
  validates :seller_id, presence: true

  belongs_to :seller, foreign_key: true, dependent: :destroy
end
