require "application_system_test_case"

class WalksTest < ApplicationSystemTestCase
  setup do
    @walk = walks(:one)
  end

  test "visiting the index" do
    visit walks_url
    assert_selector "h1", text: "Walks"
  end

  test "should create walk" do
    visit walks_url
    click_on "New walk"

    fill_in "Desc", with: @walk.desc
    fill_in "Difficulty", with: @walk.difficulty
    fill_in "Duration", with: @walk.duration
    fill_in "End lat", with: @walk.end_lat
    fill_in "End long", with: @walk.end_long
    check "Loop" if @walk.loop
    fill_in "Name", with: @walk.name
    fill_in "Start lat", with: @walk.start_lat
    fill_in "Start long", with: @walk.start_long
    click_on "Create Walk"

    assert_text "Walk was successfully created"
    click_on "Back"
  end

  test "should update Walk" do
    visit walk_url(@walk)
    click_on "Edit this walk", match: :first

    fill_in "Desc", with: @walk.desc
    fill_in "Difficulty", with: @walk.difficulty
    fill_in "Duration", with: @walk.duration
    fill_in "End lat", with: @walk.end_lat
    fill_in "End long", with: @walk.end_long
    check "Loop" if @walk.loop
    fill_in "Name", with: @walk.name
    fill_in "Start lat", with: @walk.start_lat
    fill_in "Start long", with: @walk.start_long
    click_on "Update Walk"

    assert_text "Walk was successfully updated"
    click_on "Back"
  end

  test "should destroy Walk" do
    visit walk_url(@walk)
    click_on "Destroy this walk", match: :first

    assert_text "Walk was successfully destroyed"
  end
end
