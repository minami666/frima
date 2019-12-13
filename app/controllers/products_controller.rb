class ProductsController < ApplicationController

  def index
    @productsimage = Productsimage.all
    @categories = Category.all
    @brands = Brand.all
  end

  def show
    # @product = Product.find(id: params[:id])
    @product = Product.find_by(id: 1)
  end

  def search
    @products = Product.search(params[:keyword])
  end

end
