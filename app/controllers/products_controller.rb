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
    @sold = Buyer.find_by(product_id:@products.id)
  end


  def set_action
    @categories = Category.all
    @brands = Brand.all
  end

end
