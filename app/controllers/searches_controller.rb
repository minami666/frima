class SearchesController < ApplicationController
  def index 
    @categories = Category.all
    @brands = Brand.all
    @products = Product.search(params[:search]).limit(20)
    @search = params[:search]
  end
end
