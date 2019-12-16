class ProductslikesController < ApplicationController

before_action :like_action

  def new

  end

  def create
    
  end

  def edit
  end

  def update
  end

  private

    def likes_params
      params.require(:productslike).permit(:products_likes)
    end

    def like_action
      @likes = Productslike.find(id: params[:id])
    end

end
