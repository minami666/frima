class Productsimage < ApplicationRecord
  belongs_to :product, foreign_key: true
  mount_uploader :image, ImageUploader
end
