require "application_system_test_case"

class UserorderdescriptionsTest < ApplicationSystemTestCase
  setup { @userorderdescription = userorderdescriptions(:one) }

  test "visiting the index" do
    visit userorderdescriptions_url
    assert_selector "h1", text: "Userorderdescriptions"
  end

  test "should create userorderdescription" do
    visit userorderdescriptions_url
    click_on "New userorderdescription"

    fill_in "Item", with: @userorderdescription.item_id
    fill_in "Userorder", with: @userorderdescription.userorder_id
    fill_in "Quantity", with: @userorderdescription.quantity
    click_on "Create Userorderdescription"

    assert_text "Userorderdescription was successfully created"
    click_on "Back"
  end

  test "should update Userorderdescription" do
    visit userorderdescription_url(@userorderdescription)
    click_on "Edit this userorderdescription", match: :first

    fill_in "Item", with: @userorderdescription.item_id
    fill_in "Userorder", with: @userorderdescription.userorder_id
    fill_in "Quantity", with: @userorderdescription.quantity
    click_on "Update Userorderdescription"

    assert_text "Userorderdescription was successfully updated"
    click_on "Back"
  end

  test "should destroy Userorderdescription" do
    visit userorderdescription_url(@userorderdescription)
    click_on "Destroy this userorderdescription", match: :first

    assert_text "Userorderdescription was successfully destroyed"
  end
end
