class AddressesController < ApplicationController

  def new
    @addresses = Address.new
  end

  def create
    # binding.pry
    @addresses = Address.new(address_params)
    if @addresses.save
      redirect_to new_card_path
    else
      render 'new'
    end
  end

  def edit
    @address = Address.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @address = Address.find(params[:id])
    if @address.update(address_params)
      redirect_to new_product_buyer_path(@product)
    else
      binding.pry
    end
  end

  private

    def address_params
      params.require(:address).permit(:postnum,:prefecture,:city,:street_num,:building,:tel).merge(user_id: current_user.id)
    end

end