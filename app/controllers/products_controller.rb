class ProductsController < ApplicationController
  before_action :set_action, only: [:index,:show]

  def index
    @productsimage = Productsimage.all
  end

  def show
    @product = Product.find(params[:id])
    @productsimages = Productsimage.where(product_id: params[:id])
  end

  def search
    @products = Product.search(params[:keyword])
  end

  def set_action
    @categories = Category.all
    @brands = Brand.all
  end

end
