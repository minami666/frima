class BuyersController < ApplicationController

  def new
  end

  def create
  end

  def show
    render addresses: "postnum"
    numbar = Product.find(id: params[:id])
    render addresses: "city"
    city_name = Product.find(id: params[:id])
    render addresses: "family_name_knj"
    name_knj = Product.find(id: params[:id])
  end

end