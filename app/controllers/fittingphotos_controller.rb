class FittingphotosController < ApplicationController
  
  def index
    @product = Product.find(params[:thirtyday_id])
    @photos = @product.fitting_photos
  end

  def show
    @photo = FittingPhoto.find(params[:id])
    @discussion = Discussion.new
    @thirtyday = @photo.product
  end

end