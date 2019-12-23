class Product < ApplicationRecord

  #検索機能用につけている
  def self.search(search)
    return Product.all unless search
    Product.where('name LIKE(?)',"%#{search}%")
  end

validates :name, presence: true
validates :deliver_how, presence: true
validates :deliverday, presence: true
validates :price, presence: true
validates :state, presence: true

belongs_to :seller, foreign_key: true,optional: true
belongs_to :brand, foreign_key: true,optional: true
belongs_to :size, foreign_key: true,optional: true
belongs_to :user, foreign_key: true,optional: true
belongs_to :category, foreign_key: true,optional: true

has_many :messages,dependent: :destroy

has_many :productsimages, dependent: :destroy
accepts_nested_attributes_for :productsimages, allow_destroy: true

end