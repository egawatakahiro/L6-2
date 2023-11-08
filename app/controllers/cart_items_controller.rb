class CartItemsController < ApplicationController
  def new
    #@products = Product.find[params[:product_id]]
  end

  def create
    # @cart_item = CartItem.new(
    #   qty: params[:qty],
    #   product_id: params[:id],
    #   cart_id: 1)
    # @cart_item.save
    
    # redirect_to root_path
    @cart_item = CartItem.new(cart_item_params)
    if @cart_item.save
      redirect_to cart_psth(@cart_item.cart_id)
    else
      redirect_to products_path
    end
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to cart_path(@cart_item.cart_id), notice: 'Product was successfully remove from the cart'
  end
  
  private
  
  def cart_item_params
    params.require(:cart_item).permit(:qty, :product_id).marge(cart_id: 1)
  end
end
