require "test_helper"

class WalksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @walk = walks(:one)
  end

  test "should get index" do
    get walks_url
    assert_response :success
  end

  test "should get new" do
    get new_walk_url
    assert_response :success
  end

  test "should create walk" do
    assert_difference("Walk.count") do
      post walks_url, params: { walk: { desc: @walk.desc, difficulty: @walk.difficulty, duration: @walk.duration, end_lat: @walk.end_lat, end_long: @walk.end_long, loop: @walk.loop, name: @walk.name, start_lat: @walk.start_lat, start_long: @walk.start_long } }
    end

    assert_redirected_to walk_url(Walk.last)
  end

  test "should show walk" do
    get walk_url(@walk)
    assert_response :success
  end

  test "should get edit" do
    get edit_walk_url(@walk)
    assert_response :success
  end

  test "should update walk" do
    patch walk_url(@walk), params: { walk: { desc: @walk.desc, difficulty: @walk.difficulty, duration: @walk.duration, end_lat: @walk.end_lat, end_long: @walk.end_long, loop: @walk.loop, name: @walk.name, start_lat: @walk.start_lat, start_long: @walk.start_long } }
    assert_redirected_to walk_url(@walk)
  end

  test "should destroy walk" do
    assert_difference("Walk.count", -1) do
      delete walk_url(@walk)
    end

    assert_redirected_to walks_url
  end
end
