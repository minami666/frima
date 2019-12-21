class ProductsimagesController < ApplicationController

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
    @productsimage = Productsimage.find(params[:id])
    @productsimage.destroy

    @url = @productsimage.product_id
    redirect_to "/sellers/#{@url}/edit2"
  end

end
