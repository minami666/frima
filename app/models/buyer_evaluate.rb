class BuyerEvaluate < ApplicationRecord
  validates :buyers_id, presence: true

  belongs_to :buyer, foreign_key: true, dependent: :destroy
end
