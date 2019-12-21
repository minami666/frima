class BuyersController < ApplicationController

  def new
    @product = Product.find(params[:product_id])
    @productImages = @product.productsimages
    @buyer = Buyer.new
  end

  def create
    @buyer = Buyer.new(buy_params)
    if @buyer.save
    redirect_to root_path
    else
      redirect_to new_product_buyer_path
    end
  end

  def show
  end

  def buy_params
    params.require(:buyer).permit!
    #(:user_id,:product_id,:buyer_evaluate_id)
  end

end
