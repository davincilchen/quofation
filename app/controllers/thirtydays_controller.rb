class ThirtydaysController < ApplicationController
  before_action :authenticate_user!
  def index
    @products = Product.where(thirtydays_status: true).sample(3)
    @rand_prod = Product.where(thirtydays_status: true).sample
  end
  
  def show
    @product = Product.find(params[:id])
    @comment = Comment.new
  end

  def designers
    @designers = Designer.order("RANDOM()")
  end

  def products
    @products = Product.where(thirtydays_status: true).order("RANDOM()")
  end
  
end
