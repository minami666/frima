class BrandsController < ApplicationController
  before_action :set_action, only: [:index,:show]
  def index
  end

  def show
    @products = Product.where(brand_id:params[:id])
    @bra = Brand.find(params[:id])
  end

  def set_action
    @categories = Category.all
    @brands = Brand.all
  end

end
