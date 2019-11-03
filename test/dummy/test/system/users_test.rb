require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "creating a User" do
    visit users_url
    click_on "New User"

    fill_in "Name", with: @user.name
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "creating a User with blank name" do
    visit users_url
    click_on "New User"

    click_on "Create User"

    assert_text "Name can't be blank"
    assert page.has_css?('#error_explanation')
  end

  test "updating a User" do
    visit users_url
    click_on "Edit", match: :first

    fill_in "Name", with: @user.name
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "updating a User with blank name" do
    visit users_url
    click_on "Edit", match: :first

    fill_in "Name", with: ''
    click_on "Update User"

    assert_text "Name can't be blank"
    assert page.has_css?('#update_error_explanation')
  end

  test "destroying a User" do
    visit users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User was successfully destroyed"
  end
end
