class AddressesController < ApplicationController

  def new
    @addresses = Address.new
  end

  def create
    @addresses = Address.new(address_params)

    if @addresses.save
      redirect_to new_credit_path
    else
      # binding.pry
      render 'new'
    end
  end

  def edit

  end

  def update

  end

  private

    def address_params
      params.require(:address).permit(:postnum,:prefecture,:city,:street_num,:building)
    end

end