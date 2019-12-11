class SellersController < ApplicationController

  # 商品の出品画面(もっとも難易度が高そうなので時間をかける)
  def new
    @product = Product.new
    @product.productsimages.build
  end

  def create
    @product = Product.new(product_params)
    @product.save
    params[:product_images][:image].each do |image|
    @product.productsimages.create(image: image)
    end
    redirect_to "/products/show"
    end

  def edit
  end

  def update
  end

  def delete
  end
  private
  def product_params
    params.require(:product).permit(:name,:explanation,:category_id,:brand_id,:state,:size_id,:deliver_how,
    :deliverday,:price, productsimages_attributes: [:image])
    .merge(user_id: current_user.id,seller_id: current_user.id)
  #  params.require(:productsimages).permit!
  end

end
