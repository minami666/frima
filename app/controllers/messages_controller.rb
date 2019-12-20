class MessagesController < ApplicationController

  def index
  end

  def new
  end

  def create
    @message = Message.new(message_params)
    if @message.save!
      redirect_to "/products/1"
    else
      binding.pry
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  private
  def message_params
    @product_id = params[:product_id]
    params.require(:message).permit!
  end

end
