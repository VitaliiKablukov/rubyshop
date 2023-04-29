require "test_helper"

class UserordersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userorder = userorders(:one)
  end

  test "should get index" do
    get userorders_url
    assert_response :success
  end

  test "should get new" do
    get new_userorder_url
    assert_response :success
  end

  test "should create userorder" do
    assert_difference("Userorder.count") do
      post userorders_url, params: { userorder: { amount: @userorder.amount, user_id: @userorder.user_id } }
    end

    assert_redirected_to userorder_url(Userorder.last)
  end

  test "should show userorder" do
    get userorder_url(@userorder)
    assert_response :success
  end

  test "should get edit" do
    get edit_userorder_url(@userorder)
    assert_response :success
  end

  test "should update userorder" do
    patch userorder_url(@userorder), params: { userorder: { amount: @userorder.amount, user_id: @userorder.user_id } }
    assert_redirected_to userorder_url(@userorder)
  end

  test "should destroy userorder" do
    assert_difference("Userorder.count", -1) do
      delete userorder_url(@userorder)
    end

    assert_redirected_to userorders_url
  end
end
