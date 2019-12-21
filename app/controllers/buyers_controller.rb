class BuyersController < ApplicationController

  def new
    @product = Product.find(params[:product_id])
  end

  def create
  end

  def show
  end

end
