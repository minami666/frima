class BuyersController < ApplicationController
  before_action :set_card, :set_product

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
      customer = Payjp::Customer.retrieve(@card.customer_id)
      @default_card_information = customer.cards.retrieve(@card.card_id)
    end
  end

  def create
    @buyer = Buyer.new(buy_params)
    if @buyer.save
      amount = product.price
      Payjp.api_key = ENV['PAYJP_PRIVATE_KEY']
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

  private
def set_card
  card = Card.where(user_id: current_user.id).first if Card.where(user_id: current_user.id).present?
end

def set_product
  product = Product.find(params[:product_id])
end

end
