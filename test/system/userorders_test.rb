require "application_system_test_case"

class UserordersTest < ApplicationSystemTestCase
  setup do
    @userorder = userorders(:one)
  end

  test "visiting the index" do
    visit userorders_url
    assert_selector "h1", text: "Userorders"
  end

  test "should create userorder" do
    visit userorders_url
    click_on "New userorder"

    fill_in "Amount", with: @userorder.amount
    fill_in "User", with: @userorder.user_id
    click_on "Create Userorder"

    assert_text "Userorder was successfully created"
    click_on "Back"
  end

  test "should update Userorder" do
    visit userorder_url(@userorder)
    click_on "Edit this userorder", match: :first

    fill_in "Amount", with: @userorder.amount
    fill_in "User", with: @userorder.user_id
    click_on "Update Userorder"

    assert_text "Userorder was successfully updated"
    click_on "Back"
  end

  test "should destroy Userorder" do
    visit userorder_url(@userorder)
    click_on "Destroy this userorder", match: :first

    assert_text "Userorder was successfully destroyed"
  end
end
