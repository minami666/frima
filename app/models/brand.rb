class Brand < ApplicationRecord
  validates :brand_name,presence: true

  has_many :products
  has_many :categories ,through: :brand_categories
end
