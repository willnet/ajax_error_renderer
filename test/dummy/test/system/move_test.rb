require "application_system_test_case"

class MoveTest < ApplicationSystemTestCase
  test "if move option is true, scroll up on validation error, if false not scroll up" do
    visit new_long_and_not_move_path
    click_on "Create User"
    y_without_move = evaluate_script('window.scrollY')

    visit new_long_and_move_path
    click_on "Create User"

    y_with_move = evaluate_script('window.scrollY')
    assert(y_without_move > y_with_move)
  end
end
