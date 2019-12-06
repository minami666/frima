class Product < ApplicationRecord

  #検索機能用につけている
  def self.search(search)
    return Product.all unless search
    Tweet.where('name LIKE(?)', "%#{search}%")
  end
end
