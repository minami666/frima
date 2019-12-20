class Product < ApplicationRecord

  #検索機能用につけている
  def self.search(search)
    return Product.all unless search
    Tweet.where('name LIKE(?)', "%#{search}%")
  end

# validates :name, presence: true
# validates :deliver_how, presence: true
# validates :deliverday, presence: true
# validates :price, presence: true
# validates :state, presence: true


 belongs_to :seller
 belongs_to :brand
 belongs_to :size
 belongs_to :user
 belongs_to :category

# belongs_to :seller
# belongs_to :brand
# belongs_to :size
# belongs_to :user
# belongs_to :category


has_many :productsimages, dependent: :destroy
accepts_nested_attributes_for :productsimages, allow_destroy: true

end