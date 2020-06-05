require 'test_helper'

class SportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sport = sports(:basketball)
  end

  test "should get index" do
    get sports_url, as: :json
    assert_response :success
  end

=begin
  test "should create sport" do
    assert_difference('Sport.count') do
      post sports_url, params: { sport: { name: @sport.name } }, as: :json
    end

    assert_response 201
  end
=end

  test "should show sport" do
    get sport_url(@sport), as: :json
    assert_response :success
  end

  test "should update sport" do
    patch sport_url(@sport), params: { sport: { name: @sport.name } }, as: :json
    assert_response 200
  end

  test "should destroy sport" do
    assert_difference('Sport.count', -1) do
      delete sport_url(@sport), as: :json
    end

    assert_response 204
  end
end
