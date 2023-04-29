class CartController < ApplicationController
  def add_to_cart
    item = Item.first
    puts item.id.inspect
    quantity = params[:quantity].to_i
    # создаем запись о товаре в корзине с указанным количеством
    Userorder.new(item_id: item.id, quantity: quantity)
    redirect_to userorders_path
  end
end
