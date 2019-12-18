class CardController < ApplicationController
  before_action :set_card,only: [:index, :create]

  require "payjp"

  def new
    @newcard = Card.new

  end

  def create(card_params) #payjpとCardのデータベース作成を実施します。
    Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
    if params['payjp-token'].blank?
      redirect_to action: "new"
    else
      customer = Payjp::Customer.create(
      card: params['payjp-token'],
      metadata: {user_id: current_user.id}
      ) #念の為metadataにuser_idを入れましたがなくてもOK
      @newcard = Card.new(user_id: current_user.id, customer_id: customer.id, card_id: customer.default_card)
      if @newcard.save
        redirect_to action: "show"
      else
        redirect_to action: "create"
      end
    end
  end

  def delete #PayjpとCardデータベースを削除します
    if @card.blank?
      redirect_to controller: "card", action: "new"
    else
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
      customer = Payjp::Customer.retrieve(card.customer_id)
      customer.delete
      card.delete
    end
      redirect_to action: "new"
  end

  def show #Cardのデータpayjpに送り情報を取り出します
    if card.blank?
      redirect_to action: "new" 
    else
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
      customer = Payjp::Customer.retrieve(card.customer_id)
      @default_card_information = customer.cards.retrieve(card.card_id)
      redirect_to action: "index"
    end
  end
end

private
def set_card
  @card = Card.find_by(user_id: current_user.id).first
end

def card_params
  params.require(:card).permit(:customer_id, :card_id, :created_at, :updated_at, :number, :name, :deadline, :security_num)
end