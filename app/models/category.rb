class Category < ApplicationRecord
  validates :name, presence: true

  has_many :products
  has_many :brands, through: :brand_categories
  has_many :brand_categories
end
