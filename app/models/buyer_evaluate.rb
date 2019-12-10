class BuyerEvaluate < ApplicationRecord
  validates :buyer_id, presence: true

  belongs_to :buyer, foreign_key: true, dependent: :destroy
end
