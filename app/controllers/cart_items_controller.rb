class CartItemsController < ApplicationController
  def new
    @products = Product.new
  end

  def create
    @products = Product.new(params.require(:product).permit(:name, :price))
    
    if @products.save
      flash[:success] = "商品が正常に追加されました。"
      redirect_to products_path
    else
      render 'new'
    end
  end

  def destroy
    product = Product.find_by(name: params[:name], price: params[:price])
    if product
      product.destroy
      flash[:success] = '商品が削除されました'
    else
      flash[:error] = '商品が見つかりませんでした'
    end
    redirect_to products_path
  end
end
