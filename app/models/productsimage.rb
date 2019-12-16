class Productsimage < ApplicationRecord
  #validates :product_id, presence: true
  #validates :image, presence: true
  
  mount_uploader :image, ImageUploader
  belongs_to :product,optional: true
  
end
