require "application_system_test_case"

class AccountsTest < ApplicationSystemTestCase
  setup do
    @account = accounts(:one)
  end

  test "visiting the index" do
    visit accounts_url
    assert_selector "h1", text: "Accounts"
  end

  test "should create account" do
    visit accounts_url
    click_on "New account"

    fill_in "Account title", with: @account.account_title
    fill_in "Account type", with: @account.account_type
    fill_in "Code order", with: @account.code_order
    fill_in "Iorder", with: @account.iOrder
    check "Parent" if @account.parent
    click_on "Create Account"

    assert_text "Account was successfully created"
    click_on "Back"
  end

  test "should update Account" do
    visit account_url(@account)
    click_on "Edit this account", match: :first

    fill_in "Account title", with: @account.account_title
    fill_in "Account type", with: @account.account_type
    fill_in "Code order", with: @account.code_order
    fill_in "Iorder", with: @account.iOrder
    check "Parent" if @account.parent
    click_on "Update Account"

    assert_text "Account was successfully updated"
    click_on "Back"
  end

  test "should destroy Account" do
    visit account_url(@account)
    click_on "Destroy this account", match: :first

    assert_text "Account was successfully destroyed"
  end
end
