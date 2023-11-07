class ProductsController < ApplicationController
  
  before_action :set_product, only: [:destroy]
  
  def index
    @products = Product.all
  end

  def new
    @product = Product.new(name: params[:p_name], price: params[:p_price])
    @product.save
    redirect_to root_path
  end

  def create
  end

  def destroy
    @product.destroy
    
    redirect_to root_path
  end
  
  def set_product
    @product = Product.find(params[:id])
  end
end