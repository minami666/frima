class Brand < ApplicationRecord
  validates :brand_name,presence: true

  has_many :products,dependent: :destroy
end
