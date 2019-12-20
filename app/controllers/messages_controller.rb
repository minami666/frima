class MessagesController < ApplicationController

  def index
  end

  def new
  end

  def create
    Message.create(message_params)
    binding.pry
    redirect_to "/products/1"
  end

  def edit
  end

  def update
  end

  def delete
  end

  private
  def message_params
    params.require(:message).permit(:text)
  end

end
