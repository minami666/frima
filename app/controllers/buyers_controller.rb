class BuyersController < ApplicationController

  def new
    @product = Product.find(params[:product_id])
    @productImages = @product.productsimages
    @add = Address.find_by(user_id: [current_user.id])
    @pre = Prefecture.find(@add.prefecture)
    @buyer = Buyer.new
    @user = User.find(current_user.id)
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
  end

end
