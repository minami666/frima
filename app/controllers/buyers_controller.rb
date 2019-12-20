class BuyersController < ApplicationController

  def new
    @address = Address.where(user_id: current_user.id)[4]
  end

  def create
  end

  def show
  end

end
