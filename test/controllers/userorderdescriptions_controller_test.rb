require "test_helper"

class UserorderdescriptionsControllerTest < ActionDispatch::IntegrationTest
  setup { @userorderdescription = userorderdescriptions(:one) }

  test "should get index" do
    get userorderdescriptions_url
    assert_response :success
  end

  test "should get new" do
    get new_userorderdescription_url
    assert_response :success
  end

  test "should create userorderdescription" do
    assert_difference("Userorderdescription.count") do
      post userorderdescriptions_url,
           params: {
             userorderdescription: {
               item_id: @userorderdescription.item_id,
               userorder_id: @userorderdescription.userorder_id,
               quantity: @userorderdescription.quantity
             }
           }
    end

    assert_redirected_to userorderdescription_url(Userorderdescription.last)
  end

  test "should show userorderdescription" do
    get userorderdescription_url(@userorderdescription)
    assert_response :success
  end

  test "should get edit" do
    get edit_userorderdescription_url(@userorderdescription)
    assert_response :success
  end

  test "should update userorderdescription" do
    patch userorderdescription_url(@userorderdescription),
          params: {
            userorderdescription: {
              item_id: @userorderdescription.item_id,
              userorder_id: @userorderdescription.userorder_id,
              quantity: @userorderdescription.quantity
            }
          }
    assert_redirected_to userorderdescription_url(@userorderdescription)
  end

  test "should destroy userorderdescription" do
    assert_difference("Userorderdescription.count", -1) do
      delete userorderdescription_url(@userorderdescription)
    end

    assert_redirected_to userorderdescriptions_url
  end
end
