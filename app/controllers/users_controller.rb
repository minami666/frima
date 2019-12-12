class UsersController < ApplicationController
  binding.pry

  def new
    @user = User.new
  end

    binding.pry

  def create
    @user = User.new
    if @user.save
      redirect_to '/addresses/new'
    end
  end

  private

end
