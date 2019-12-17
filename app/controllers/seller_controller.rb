class SellersController < ApplicationController

  # 商品の出品画面(もっとも難易度が高そうなので時間をかける)
  def new
    @product = Product.new
    @product.productsimages.build
  end

  def create
    @product = Product.new(product_params)
    respond_to do |format|
    if @product.save
        params[:product_images][:image].each do |image|
          @product.productsimages.create(image: image)
        end
      format.html{redirect_to root_path}
    else
      @product.product_images.build
      format.html{render action: 'new'}
      end
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
    params.require(:product).permit(:name,:explanation,:category_id,:brand_id,:state,:size_id,:deliver_how,
    :deliverday,:price,:addresses_id,productsimages_attributes: [:image])
    .merge(user_id: current_user.id,seller_id: current_user.id)
  #  params.require(:productsimages).permit!
  end

end