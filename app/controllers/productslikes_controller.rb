class ProductslikesController < ApplicationController

  def new
    @likes = Productslike.find(id: params[:id])
  end

  def create
    @likes = Productslike.find(id: params[:id])
  end

  def edit
  end

  def update
  end

  private

    def likes_params
      params.require(:productslike).permit(:products_likes)
    end

end
