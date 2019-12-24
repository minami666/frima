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
      Payjp.api_key = 'sk_test_a3ad683fae92739356cf5902'
      customer = Payjp::Customer.retrieve(@card.customer_id)
      @default_card_information = customer.cards.retrieve(@card.card_id)
    end
  end

  def create
    @buyer = Buyer.new(buy_params)
    if @buyer.save
      card = Card.where(user_id: current_user.id).first if Card.where(user_id: current_user.id).present?
      product = Product.find(params[:product_id])
      amount = product.price
      Payjp.api_key = 'sk_test_a3ad683fae92739356cf5902'
      Payjp::Charge.create(
        :amount => amount, #支払金額を入力（itemテーブル等に紐づけても良い）
        :customer => card.customer_id, #顧客ID
        :currency => 'jpy', #日本円
      )
      
      redirect_to root_path
    else
      redirect_to new_product_buyer_path
    end
  end

  def show
  end

  def pay
  end

  def buy_params
    params.require(:buyer).permit!
  end

end