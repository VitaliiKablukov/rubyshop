require "application_system_test_case"

class OrderDescriptionsTest < ApplicationSystemTestCase
  setup { @order_description = order_descriptions(:one) }

  test "visiting the index" do
    visit order_descriptions_url
    assert_selector "h1", text: "Order descriptions"
  end

  test "should create order description" do
    visit order_descriptions_url
    click_on "New order description"

    fill_in "Item", with: @order_description.item_id
    fill_in "Order", with: @order_description.userorder_id
    fill_in "Quantity", with: @order_description.quantity
    click_on "Create Order description"

    assert_text "Order description was successfully created"
    click_on "Back"
  end

  test "should update Order description" do
    visit order_description_url(@order_description)
    click_on "Edit this order description", match: :first

    fill_in "Item", with: @order_description.item_id
    fill_in "Order", with: @order_description.userorder_id
    fill_in "Quantity", with: @order_description.quantity
    click_on "Update Order description"

    assert_text "Order description was successfully updated"
    click_on "Back"
  end

  test "should destroy Order description" do
    visit order_description_url(@order_description)
    click_on "Destroy this order description", match: :first

    assert_text "Order description was successfully destroyed"
  end
end
