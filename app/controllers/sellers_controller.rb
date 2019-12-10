class SellersController < ApplicationController

  # 商品の出品画面(もっとも難易度が高そうなので時間をかける)
  def new
    @product = Product.new
  end

  def create
    @product = Product.new
    if @product.save # 保存失敗して
      redirect_to root_path
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
  def product_params
    params.require(:product).permit(:name,:deliver_how,:deliver_day,:price,:explanation,:category_id,:state)
  end
end
