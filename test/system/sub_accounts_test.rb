require "application_system_test_case"

class SubAccountsTest < ApplicationSystemTestCase
  setup do
    @sub_account = sub_accounts(:one)
  end

  test "visiting the index" do
    visit sub_accounts_url
    assert_selector "h1", text: "Sub accounts"
  end

  test "should create sub account" do
    visit sub_accounts_url
    click_on "New sub account"

    fill_in "Description", with: @sub_account.Description
    fill_in "Subaccount title", with: @sub_account.SubAccount_title
    click_on "Create Sub account"

    assert_text "Sub account was successfully created"
    click_on "Back"
  end

  test "should update Sub account" do
    visit sub_account_url(@sub_account)
    click_on "Edit this sub account", match: :first

    fill_in "Description", with: @sub_account.Description
    fill_in "Subaccount title", with: @sub_account.SubAccount_title
    click_on "Update Sub account"

    assert_text "Sub account was successfully updated"
    click_on "Back"
  end

  test "should destroy Sub account" do
    visit sub_account_url(@sub_account)
    click_on "Destroy this sub account", match: :first

    assert_text "Sub account was successfully destroyed"
  end
end
