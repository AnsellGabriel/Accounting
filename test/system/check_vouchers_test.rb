require "application_system_test_case"

class CheckVouchersTest < ApplicationSystemTestCase
  setup do
    @check_voucher = check_vouchers(:one)
  end

  test "visiting the index" do
    visit check_vouchers_url
    assert_selector "h1", text: "Check vouchers"
  end

  test "should create check voucher" do
    visit check_vouchers_url
    click_on "New check voucher"

    fill_in "Address", with: @check_voucher.address
    fill_in "Amount", with: @check_voucher.amount
    fill_in "Bank", with: @check_voucher.bank_id
    fill_in "Date voucher", with: @check_voucher.date_voucher
    fill_in "Description", with: @check_voucher.description
    fill_in "Payee", with: @check_voucher.payee_id
    fill_in "Voucher", with: @check_voucher.voucher
    click_on "Create Check voucher"

    assert_text "Check voucher was successfully created"
    click_on "Back"
  end

  test "should update Check voucher" do
    visit check_voucher_url(@check_voucher)
    click_on "Edit this check voucher", match: :first

    fill_in "Address", with: @check_voucher.address
    fill_in "Amount", with: @check_voucher.amount
    fill_in "Bank", with: @check_voucher.bank_id
    fill_in "Date voucher", with: @check_voucher.date_voucher
    fill_in "Description", with: @check_voucher.description
    fill_in "Payee", with: @check_voucher.payee_id
    fill_in "Voucher", with: @check_voucher.voucher
    click_on "Update Check voucher"

    assert_text "Check voucher was successfully updated"
    click_on "Back"
  end

  test "should destroy Check voucher" do
    visit check_voucher_url(@check_voucher)
    click_on "Destroy this check voucher", match: :first

    assert_text "Check voucher was successfully destroyed"
  end
end
