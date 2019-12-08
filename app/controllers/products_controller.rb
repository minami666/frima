class ProductsController < ApplicationController

  def index
  end

  def show
  end

  def search #検索機能用
    @products = Product.search(params[:keyword])
  end

end
