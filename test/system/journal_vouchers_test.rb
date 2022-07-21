require "application_system_test_case"

class JournalVouchersTest < ApplicationSystemTestCase
  setup do
    @journal_voucher = journal_vouchers(:one)
  end

  test "visiting the index" do
    visit journal_vouchers_url
    assert_selector "h1", text: "Journal vouchers"
  end

  test "should create journal voucher" do
    visit journal_vouchers_url
    click_on "New journal voucher"

    fill_in "Address", with: @journal_voucher.address
    fill_in "Branch", with: @journal_voucher.branch_id
    fill_in "Date voucher", with: @journal_voucher.date_voucher
    fill_in "Description", with: @journal_voucher.description
    fill_in "Payee", with: @journal_voucher.payee_id
    fill_in "Period", with: @journal_voucher.period_id
    fill_in "Voucher", with: @journal_voucher.voucher
    click_on "Create Journal voucher"

    assert_text "Journal voucher was successfully created"
    click_on "Back"
  end

  test "should update Journal voucher" do
    visit journal_voucher_url(@journal_voucher)
    click_on "Edit this journal voucher", match: :first

    fill_in "Address", with: @journal_voucher.address
    fill_in "Branch", with: @journal_voucher.branch_id
    fill_in "Date voucher", with: @journal_voucher.date_voucher
    fill_in "Description", with: @journal_voucher.description
    fill_in "Payee", with: @journal_voucher.payee_id
    fill_in "Period", with: @journal_voucher.period_id
    fill_in "Voucher", with: @journal_voucher.voucher
    click_on "Update Journal voucher"

    assert_text "Journal voucher was successfully updated"
    click_on "Back"
  end

  test "should destroy Journal voucher" do
    visit journal_voucher_url(@journal_voucher)
    click_on "Destroy this journal voucher", match: :first

    assert_text "Journal voucher was successfully destroyed"
  end
end
