require "application_system_test_case"

class CashiersTest < ApplicationSystemTestCase
  setup do
    @cashier = cashiers(:one)
  end

  test "visiting the index" do
    visit cashiers_url
    assert_selector "h1", text: "Cashiers"
  end

  test "should create cashier" do
    visit cashiers_url
    click_on "New cashier"

    fill_in "Agent", with: @cashier.agent_id
    fill_in "Amount deposit", with: @cashier.amount_deposit
    fill_in "Amount paid", with: @cashier.amount_paid
    fill_in "Bank", with: @cashier.bank_id
    fill_in "Date deposit", with: @cashier.date_deposit
    fill_in "Or date", with: @cashier.or_date
    fill_in "Orno", with: @cashier.orno
    fill_in "Payee", with: @cashier.payee_id
    fill_in "Payment", with: @cashier.payment_id
    fill_in "Policy number", with: @cashier.policy_number
    fill_in "Service fee", with: @cashier.service_fee
    fill_in "Unuse premium", with: @cashier.unuse_premium
    fill_in "Withholding tax", with: @cashier.withholding_tax
    click_on "Create Cashier"

    assert_text "Cashier was successfully created"
    click_on "Back"
  end

  test "should update Cashier" do
    visit cashier_url(@cashier)
    click_on "Edit this cashier", match: :first

    fill_in "Agent", with: @cashier.agent_id
    fill_in "Amount deposit", with: @cashier.amount_deposit
    fill_in "Amount paid", with: @cashier.amount_paid
    fill_in "Bank", with: @cashier.bank_id
    fill_in "Date deposit", with: @cashier.date_deposit
    fill_in "Or date", with: @cashier.or_date
    fill_in "Orno", with: @cashier.orno
    fill_in "Payee", with: @cashier.payee_id
    fill_in "Payment", with: @cashier.payment_id
    fill_in "Policy number", with: @cashier.policy_number
    fill_in "Service fee", with: @cashier.service_fee
    fill_in "Unuse premium", with: @cashier.unuse_premium
    fill_in "Withholding tax", with: @cashier.withholding_tax
    click_on "Update Cashier"

    assert_text "Cashier was successfully updated"
    click_on "Back"
  end

  test "should destroy Cashier" do
    visit cashier_url(@cashier)
    click_on "Destroy this cashier", match: :first

    assert_text "Cashier was successfully destroyed"
  end
end
