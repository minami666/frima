class Brand < ApplicationRecord

  validates :brand_name,presence: true

  has_many :products
  has_many :categorys ,through :brand_categorys
  has_many :brand_categorys
end
