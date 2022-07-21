require "application_system_test_case"

class PayeesTest < ApplicationSystemTestCase
  setup do
    @payee = payees(:one)
  end

  test "visiting the index" do
    visit payees_url
    assert_selector "h1", text: "Payees"
  end

  test "should create payee" do
    visit payees_url
    click_on "New payee"

    fill_in "Address", with: @payee.address
    fill_in "Description", with: @payee.description
    fill_in "Payee", with: @payee.payee
    click_on "Create Payee"

    assert_text "Payee was successfully created"
    click_on "Back"
  end

  test "should update Payee" do
    visit payee_url(@payee)
    click_on "Edit this payee", match: :first

    fill_in "Address", with: @payee.address
    fill_in "Description", with: @payee.description
    fill_in "Payee", with: @payee.payee
    click_on "Update Payee"

    assert_text "Payee was successfully updated"
    click_on "Back"
  end

  test "should destroy Payee" do
    visit payee_url(@payee)
    click_on "Destroy this payee", match: :first

    assert_text "Payee was successfully destroyed"
  end
end
