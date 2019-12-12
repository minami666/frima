class UsersController < ApplicationController
  # binding.pry

  def new
    binding.pry
    @user = User.new
  end

  def create
    @user = User.new
    if @user.save
      redirect_to '/addresses/new'
    end
  end

  # private

end
