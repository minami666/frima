class SellerEvaluate < ApplicationRecord
  validates :sellers_id, presence: true

  belongs_to :seller, foreign_key: true, dependent: :destroy
end
