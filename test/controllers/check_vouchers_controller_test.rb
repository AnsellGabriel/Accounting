require "test_helper"

class CheckVouchersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @check_voucher = check_vouchers(:one)
  end

  test "should get index" do
    get check_vouchers_url
    assert_response :success
  end

  test "should get new" do
    get new_check_voucher_url
    assert_response :success
  end

  test "should create check_voucher" do
    assert_difference("CheckVoucher.count") do
      post check_vouchers_url, params: { check_voucher: { address: @check_voucher.address, amount: @check_voucher.amount, bank_id: @check_voucher.bank_id, date_voucher: @check_voucher.date_voucher, description: @check_voucher.description, payee_id: @check_voucher.payee_id, voucher: @check_voucher.voucher } }
    end

    assert_redirected_to check_voucher_url(CheckVoucher.last)
  end

  test "should show check_voucher" do
    get check_voucher_url(@check_voucher)
    assert_response :success
  end

  test "should get edit" do
    get edit_check_voucher_url(@check_voucher)
    assert_response :success
  end

  test "should update check_voucher" do
    patch check_voucher_url(@check_voucher), params: { check_voucher: { address: @check_voucher.address, amount: @check_voucher.amount, bank_id: @check_voucher.bank_id, date_voucher: @check_voucher.date_voucher, description: @check_voucher.description, payee_id: @check_voucher.payee_id, voucher: @check_voucher.voucher } }
    assert_redirected_to check_voucher_url(@check_voucher)
  end

  test "should destroy check_voucher" do
    assert_difference("CheckVoucher.count", -1) do
      delete check_voucher_url(@check_voucher)
    end

    assert_redirected_to check_vouchers_url
  end
end
