class ProductsController < ApplicationController
  
  before_action :set_product, only: [:destroy]
  
  def index
    @products = Product.all
  end

  def new
    @products = Product.new
  end

  def create
    @products = Product.new(params.require(:product).permit(:name, :price))
    
    if @products.save
      flash[:success] = "商品が正常に登録されました。"
      redirect_to products_path
    else
      render 'new'
    end
  end

  # def destroy
    # @products = Product.find_by(name: params[:name], price: params[:price])
    # @products.destroy
    # redirect_to products_path
    # @products = Product.find_by(name: params[:name], price: params[:price]).destroy
    
    # if @products
    #   @products.destroy
    #   flash[:success] = '商品が削除されました'
    # else
    #   flash[:error] = '商品が見つかりませんでした'
    # end
    # redirect_to products_path
    
    # Product.find(params[:name], params[:price]).destroy
    # redirect_to products_path
    
  def destroy
    # product = Product.find_by(name: params[:name], price: params[:price])
    # if product
    #   product.destroy
    #   flash[:success] = '商品が削除されました'
    # else
    #   flash[:error] = '商品が見つかりませんでした'
    # end
    # redirect_to products_path
    @product.destroy
    
    redirect_to products_path
  end
  
  def set_product
    @product = Product.find(params[:id])
  end
end
#   end
# end
