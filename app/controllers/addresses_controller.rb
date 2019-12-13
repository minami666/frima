class AddressesController < ApplicationController

  def new
    @addresses = Address.new
  end

  def create
    @addresses = Address.new(address_params)
  end

  def edit

  end

  def update

  end

  private

    def address_params
      params.require(:address).permit(:postnum,:prefecture,:city,:street_num,:building,:user_id)
    end

end
