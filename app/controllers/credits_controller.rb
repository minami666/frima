class CreditsController < ApplicationController

  def new    
    @credit = Credit.new
  end

  def create
    @credit = Credit.new(credit_params)
    if @credit.save
      redirect_to root_path
    else
      binding.pry
    end
  end

  def edit

  end

  def update

  end

  private
  def credit_params
    params.require(:credit).permit(:name, :number, :deadline, :security_num)
  end


end