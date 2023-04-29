require "test_helper"

class OrderDescriptionsControllerTest < ActionDispatch::IntegrationTest
  setup { @order_description = order_descriptions(:one) }

  test "should get index" do
    get order_descriptions_url
    assert_response :success
  end

  test "should get new" do
    get new_order_description_url
    assert_response :success
  end

  test "should create order_description" do
    assert_difference("OrderDescription.count") do
      post order_descriptions_url,
           params: {
             userorder_description: {
               item_id: @order_description.item_id,
               userorder_id: @order_description.userorder_id,
               quantity: @order_description.quantity
             }
           }
    end

    assert_redirected_to order_description_url(OrderDescription.last)
  end

  test "should show order_description" do
    get order_description_url(@order_description)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_description_url(@order_description)
    assert_response :success
  end

  test "should update order_description" do
    patch order_description_url(@order_description),
          params: {
            order_description: {
              item_id: @order_description.item_id,
              userorder_id: @order_description.userorder_id,
              quantity: @order_description.quantity
            }
          }
    assert_redirected_to order_description_url(@order_description)
  end

  test "should destroy order_description" do
    assert_difference("OrderDescription.count", -1) do
      delete order_description_url(@order_description)
    end

    assert_redirected_to order_descriptions_url
  end
end
