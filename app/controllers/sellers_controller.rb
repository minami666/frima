class SellersController < ApplicationController

  # 商品の出品画面(もっとも難易度が高そうなので時間をかける)
  def new
    @product = Product.new
    @product.productsimages.build
  end

  def create
    @pro = Product.new(product_params)
    if @pro.save
      redirect_to root_path
    else
      #binding.pry
      redirect_to "/products/show"
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
    params.require(:product).permit(:name,:deliver_how,:deliver_day,:price,:explanation,:category_id,:state,
    productsimages_attributes: [:id, :image, :_destroy])
  end
end
