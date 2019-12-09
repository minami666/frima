class SellersController < ApplicationController

  # 商品の出品画面(もっとも難易度が高そうなので時間をかける)
  def new
    @product = Product.new
  end

  def create
    Product.create(product_params)
    redirect_to root_path
  end

  def edit
  end

  def update
  end

  def delete
  end
  private
  def product_params
    params.require(:product).permit(:name,:deliver_how,:deliver_day,:price,:explanation)
  end

end
