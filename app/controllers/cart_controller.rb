class CartController < ApplicationController
  def add_to_cart
    userId = current_user.id
    itemId = params[:itemId].to_i
    quantity = params[:quantity].to_i
    price = params[:price].to_i
    amount = quantity * price.to_i

    # создаем запись о товаре в корзине с указанным количеством
    userOrder = Userorder.create(user_id: userId, amount: amount)
    userOrderId = userOrder.id
    Userorderdescription.create(
      userorder_id: userOrderId,
      item_id: itemId,
      quantity: quantity
    )
    redirect_to "/userorders/#{userOrderId}"
  end
end
