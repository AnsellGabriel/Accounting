require "test_helper"

class GeneralledgersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @generalledger = generalledgers(:one)
  end

  test "should get index" do
    get generalledgers_url
    assert_response :success
  end

  test "should get new" do
    get new_generalledger_url
    assert_response :success
  end

  test "should create generalledger" do
    assert_difference("Generalledger.count") do
      post generalledgers_url, params: { generalledger: { account_id: @generalledger.account_id, branch_id: @generalledger.branch_id, credit: @generalledger.credit, credit_code: @generalledger.credit_code, debit: @generalledger.debit, debit_code: @generalledger.debit_code, entry_type: @generalledger.entry_type, reference_id: @generalledger.reference_id, sub_account_id: @generalledger.sub_account_id, transaction_date: @generalledger.transaction_date } }
    end

    assert_redirected_to generalledger_url(Generalledger.last)
  end

  test "should show generalledger" do
    get generalledger_url(@generalledger)
    assert_response :success
  end

  test "should get edit" do
    get edit_generalledger_url(@generalledger)
    assert_response :success
  end

  test "should update generalledger" do
    patch generalledger_url(@generalledger), params: { generalledger: { account_id: @generalledger.account_id, branch_id: @generalledger.branch_id, credit: @generalledger.credit, credit_code: @generalledger.credit_code, debit: @generalledger.debit, debit_code: @generalledger.debit_code, entry_type: @generalledger.entry_type, reference_id: @generalledger.reference_id, sub_account_id: @generalledger.sub_account_id, transaction_date: @generalledger.transaction_date } }
    assert_redirected_to generalledger_url(@generalledger)
  end

  test "should destroy generalledger" do
    assert_difference("Generalledger.count", -1) do
      delete generalledger_url(@generalledger)
    end

    assert_redirected_to generalledgers_url
  end
end
