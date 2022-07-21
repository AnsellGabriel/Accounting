require "test_helper"

class SubAccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sub_account = sub_accounts(:one)
  end

  test "should get index" do
    get sub_accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_sub_account_url
    assert_response :success
  end

  test "should create sub_account" do
    assert_difference("SubAccount.count") do
      post sub_accounts_url, params: { sub_account: { Description: @sub_account.Description, SubAccount_title: @sub_account.SubAccount_title } }
    end

    assert_redirected_to sub_account_url(SubAccount.last)
  end

  test "should show sub_account" do
    get sub_account_url(@sub_account)
    assert_response :success
  end

  test "should get edit" do
    get edit_sub_account_url(@sub_account)
    assert_response :success
  end

  test "should update sub_account" do
    patch sub_account_url(@sub_account), params: { sub_account: { Description: @sub_account.Description, SubAccount_title: @sub_account.SubAccount_title } }
    assert_redirected_to sub_account_url(@sub_account)
  end

  test "should destroy sub_account" do
    assert_difference("SubAccount.count", -1) do
      delete sub_account_url(@sub_account)
    end

    assert_redirected_to sub_accounts_url
  end
end
