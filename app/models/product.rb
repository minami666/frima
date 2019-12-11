class Product < ApplicationRecord

  #検索機能用につけている
  def self.search(search)
    return Product.all unless search
    Tweet.where('name LIKE(?)', "%#{search}%")
  end

validates :name, presence: true
validates :deliver_how, presence: true
validates :deliver_day, presence: true
validates :price, presence: true
validates :state, presence: true

has_many :productsimages, dependent: :destroy
accepts_nested_attributes_for :productsimages

end