class CartsController < ApplicationController
  def show
    @cart_items = CartItem.where(cart_id: 1)
  end
end
