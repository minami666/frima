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

belongs_to :seller,optional: true
belongs_to :brand,optional: true
belongs_to :size,optional: true
belongs_to :user,optional: true
belongs_to :category,optional: true

has_many :messagesdependent: :destroy
has_many :productsimages, dependent: :destroy
accepts_nested_attributes_for :productsimages, allow_destroy: true

end