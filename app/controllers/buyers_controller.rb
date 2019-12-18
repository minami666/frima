class BuyersController < ApplicationController

  def new
  end

  def create
  end

  def show
    render addresses: "postnum"
    numbar = Product.find(id: params[:id])
  end

end
