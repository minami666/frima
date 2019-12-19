class CategoriesController < ApplicationController
  before_action :set_action, only: [:index,:show]

  def index
  end

  def show
    @products = Product.where(category_id:params[:id])
    @cate = Category.find(params[:id])
  end

  def set_action
    @categories = Category.all
    @brands = Brand.all
  end

end
