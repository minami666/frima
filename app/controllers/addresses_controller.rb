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
    @address = Address.find_by(params[:id])
  end

  def update
    @product = Product.find_by(params[:id])
    @address = Address.find_by(params[:id])
    if @address.update(address_params)
      redirect_to new_product_buyer_path(@product)
    else
    end
  end

  private

    def address_params
      params.require(:address).permit(:postnum,:prefecture,:city,:street_num,:building,:tel,:family_name_knj,:first_name_knj,:family_name_ktkn,:first_name_ktkn)
      .merge(user_id: current_user.id)
    end

end