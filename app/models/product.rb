class Product < ApplicationRecord

  #検索機能用につけている
  def self.search(search)
    return Product.all unless search
    Tweet.where('name LIKE(?)', "%#{search}%")
  end

validates :name, presence: true
validates :deliver_how, presence: true
validates :deliverday, presence: true
validates :price, presence: true
validates :state, presence: true

has_many :productsimages, dependent: :destroy
accepts_nested_attributes_for :productsimages 

#validates :name, presence: true
#validates :deliver_how, presence: true
#validates :deliver_day, presence: true
#validates :price, presence: true
#validates :state, presence: true

# #validates :brands_id, presence: true
# #validates :sizes_id, presence: true
# #validates :user_id, presence: true
# #validates :sellers_id, presence: true

#validates :brand_id, presence: true
#validates :size_id, presence: true
#validates :user_id, presence: true
#validates :seller_id, presence: true

#has_many :productslikes, dependent: :destroy
#belongs_to :user, foreign_key: true
#belongs_to :size, foreign_key: true
#belongs_to :brand, foreign_key: true
#belongs_to :category, foreign_key: true
#has_one :seller
#has_one :buyer

end
