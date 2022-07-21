require "test_helper"

class CashiersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cashier = cashiers(:one)
  end

  test "should get index" do
    get cashiers_url
    assert_response :success
  end

  test "should get new" do
    get new_cashier_url
    assert_response :success
  end

  test "should create cashier" do
    assert_difference("Cashier.count") do
      post cashiers_url, params: { cashier: { agent_id: @cashier.agent_id, amount_deposit: @cashier.amount_deposit, amount_paid: @cashier.amount_paid, bank_id: @cashier.bank_id, date_deposit: @cashier.date_deposit, or_date: @cashier.or_date, orno: @cashier.orno, payee_id: @cashier.payee_id, payment_id: @cashier.payment_id, policy_number: @cashier.policy_number, service_fee: @cashier.service_fee, unuse_premium: @cashier.unuse_premium, withholding_tax: @cashier.withholding_tax } }
    end

    assert_redirected_to cashier_url(Cashier.last)
  end

  test "should show cashier" do
    get cashier_url(@cashier)
    assert_response :success
  end

  test "should get edit" do
    get edit_cashier_url(@cashier)
    assert_response :success
  end

  test "should update cashier" do
    patch cashier_url(@cashier), params: { cashier: { agent_id: @cashier.agent_id, amount_deposit: @cashier.amount_deposit, amount_paid: @cashier.amount_paid, bank_id: @cashier.bank_id, date_deposit: @cashier.date_deposit, or_date: @cashier.or_date, orno: @cashier.orno, payee_id: @cashier.payee_id, payment_id: @cashier.payment_id, policy_number: @cashier.policy_number, service_fee: @cashier.service_fee, unuse_premium: @cashier.unuse_premium, withholding_tax: @cashier.withholding_tax } }
    assert_redirected_to cashier_url(@cashier)
  end

  test "should destroy cashier" do
    assert_difference("Cashier.count", -1) do
      delete cashier_url(@cashier)
    end

    assert_redirected_to cashiers_url
  end
end
