class BrandCategory < ApplicationRecord

  belongs_to :category, foreign_key: true
  belongs_to :brand, foreign_key: true

end
