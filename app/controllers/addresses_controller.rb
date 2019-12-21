class AddressesController < ApplicationController

  def new
    @addresses = Address.new
  end

  def create
    @addresses = Address.new(address_params)
    if @addresses.save
      redirect_to new_card_path
    else
      render 'new'
    end
  end

  def edit

  end

  def update

  end

  private

    def address_params
      params.permit(:postnum,:prefecture,:city,:street_num,:building,:tel,:family_name_knj,:first_name_knj,:family_name_ktkn,:first_name_ktkn).merge(user_id: current_user.id)
    end

end