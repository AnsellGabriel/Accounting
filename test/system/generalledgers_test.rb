require "application_system_test_case"

class GeneralledgersTest < ApplicationSystemTestCase
  setup do
    @generalledger = generalledgers(:one)
  end

  test "visiting the index" do
    visit generalledgers_url
    assert_selector "h1", text: "Generalledgers"
  end

  test "should create generalledger" do
    visit generalledgers_url
    click_on "New generalledger"

    fill_in "Account", with: @generalledger.account_id
    fill_in "Branch", with: @generalledger.branch_id
    fill_in "Credit", with: @generalledger.credit
    fill_in "Credit code", with: @generalledger.credit_code
    fill_in "Debit", with: @generalledger.debit
    fill_in "Debit code", with: @generalledger.debit_code
    fill_in "Entry type", with: @generalledger.entry_type
    fill_in "Reference", with: @generalledger.reference_id
    fill_in "Sub account", with: @generalledger.sub_account_id
    fill_in "Transaction date", with: @generalledger.transaction_date
    click_on "Create Generalledger"

    assert_text "Generalledger was successfully created"
    click_on "Back"
  end

  test "should update Generalledger" do
    visit generalledger_url(@generalledger)
    click_on "Edit this generalledger", match: :first

    fill_in "Account", with: @generalledger.account_id
    fill_in "Branch", with: @generalledger.branch_id
    fill_in "Credit", with: @generalledger.credit
    fill_in "Credit code", with: @generalledger.credit_code
    fill_in "Debit", with: @generalledger.debit
    fill_in "Debit code", with: @generalledger.debit_code
    fill_in "Entry type", with: @generalledger.entry_type
    fill_in "Reference", with: @generalledger.reference_id
    fill_in "Sub account", with: @generalledger.sub_account_id
    fill_in "Transaction date", with: @generalledger.transaction_date
    click_on "Update Generalledger"

    assert_text "Generalledger was successfully updated"
    click_on "Back"
  end

  test "should destroy Generalledger" do
    visit generalledger_url(@generalledger)
    click_on "Destroy this generalledger", match: :first

    assert_text "Generalledger was successfully destroyed"
  end
end
