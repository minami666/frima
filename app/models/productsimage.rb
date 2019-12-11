class Productsimage < ApplicationRecord
  #validates :product_id, presence: true
  #validates :image, presence: true
  #belongs_to :product,optional: true
  mount_uploader :image, ImageUploader
  
end
