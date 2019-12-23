class BuyersController < ApplicationController

  def new
    @product = Product.find(params[:product_id])
    @productImages = @product.productsimages
    @add = Address.find_by(user_id:current_user.id)
    @pre = Prefecture.find(@add.prefecture)
    @buyer = Buyer.new
    @user = User.find(current_user.id)
    @card = Card.find_by(user_id: current_user.id)
    if @card.blank?
      redirect_to new_card_path
    else
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
      customer = Payjp::Customer.retrieve(card.customer_id)
      @default_card_information = customer.cards.retrieve(card.card_id)
      redirect_to product: "index"
    end
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
