class AddressesController < ApplicationController

  def new
    @addresses = Address.new
  end

  def create
    @addresses = Address.new(address_params)
    if @user.save
      # @userはuser_path(@user) に自動変換される
      redirect_to new_credit_path
    else
      # ValidationエラーなどでDBに保存できない場合 new.html.erb を再表示
      render 'new'
    end
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
