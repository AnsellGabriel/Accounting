require "application_system_test_case"

class BranchesTest < ApplicationSystemTestCase
  setup do
    @branch = branches(:one)
  end

  test "visiting the index" do
    visit branches_url
    assert_selector "h1", text: "Branches"
  end

  test "should create branch" do
    visit branches_url
    click_on "New branch"

    fill_in "Approver", with: @branch.Approver
    fill_in "Initials", with: @branch.Initials
    fill_in "Branch code", with: @branch.branch_code
    fill_in "Branch name", with: @branch.branch_name
    fill_in "Position", with: @branch.position
    click_on "Create Branch"

    assert_text "Branch was successfully created"
    click_on "Back"
  end

  test "should update Branch" do
    visit branch_url(@branch)
    click_on "Edit this branch", match: :first

    fill_in "Approver", with: @branch.Approver
    fill_in "Initials", with: @branch.Initials
    fill_in "Branch code", with: @branch.branch_code
    fill_in "Branch name", with: @branch.branch_name
    fill_in "Position", with: @branch.position
    click_on "Update Branch"

    assert_text "Branch was successfully updated"
    click_on "Back"
  end

  test "should destroy Branch" do
    visit branch_url(@branch)
    click_on "Destroy this branch", match: :first

    assert_text "Branch was successfully destroyed"
  end
end
