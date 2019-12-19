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
    @url = @productsimage.product_id
    @productsimage.destroy

    redirect_to "/sellers/#{@url}/edit2"
    
  end

end
