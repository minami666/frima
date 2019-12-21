class ProductsController < ApplicationController
  before_action :set_action, only: [:index,:show]

  def index
    @products = Product.all
  end

  def show
    @products = Product.find(params[:id])
    @productImages = @products.productsimages
    @message = Message.new
    @messages = Message.where(product_id: params[:id])
  end

  def search
    @products = Product.search(params[:keyword])
  end

  def set_action
    @categories = Category.all
    @brands = Brand.all
  end

end
