class CartItemsController < ApplicationController
  def new
  end

  def create
    @cart_item = CartItem.new(
      qty: params[:qty],
      product_id: params[:id],
      cart_id: 1)
    @cart_item.save
    
    redirect_to root_path
  end

  def destroy
  end
end
