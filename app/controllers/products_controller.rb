class ProductsController < ApplicationController

  def index
    @productsimage = Productsimage.all
    @categorys = Category.all
    @brands = Brand.all
  end

  def show
  end

  def search #検索機能用
    @products = Product.search(params[:keyword])
  end

end
