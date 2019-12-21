class SellersController < ApplicationController

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
      format.html{render action: 'edit2'}
      end
    end
  end

  def edit
    @categories = Category.all
    @brands = Brand.all
    @product = Product.find(params[:id])
    @productsimages = Productsimage.where(product_id: params[:id])
  end


  def edit2
    @product = Product.find(params[:id])
    @productsimages = Productsimage.where(product_id: params[:id])
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to root_path
  end

  def update
    @product = Product.find(params[:id])
    respond_to do |format|
    if @product.update(product_params2)
        params[:productsimages][:image].each do |image| #params[:productsimages][:image]の中に新規の画像が居る
          @product.productsimages.create(image: image) #この中に既存の画像が居る
        end
      format.html{redirect_to root_path}
    else
      @product.productsimages.build
      format.html{render action: 'edit2'}
    end
    end
  end

  private
  def product_params
    params.require(:product).permit(:name,:explanation,:category_id,:brand_id,:state,:size_id,:deliver_how,
    :deliverday,:price,:addresses_id,:transtate,productsimages_attributes: [:image])
    .merge(user_id: current_user.id,seller_id: current_user.id)
  end

  def product_params2
    params.require(:product).permit(:name,:explanation,:category_id,:brand_id,:state,:size_id,:deliver_how,
    :deliverday,:price,:addresses_id)
    .merge(user_id: current_user.id,seller_id: current_user.id)
  end
end
