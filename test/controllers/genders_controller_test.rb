require 'test_helper'

class GendersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gender = genders(:male)
  end

  test "should get index" do
    get genders_url, as: :json
    assert_response :success
  end

=begin
  test "should create gender" do
    assert_difference('Gender.count') do
      post genders_url, params: { gender: { identity: @gender.identity } }, as: :json
    end

    assert_response 201
	end
=end

  test "should show gender" do
    get gender_url(@gender), as: :json
    assert_response :success
  end

  test "should update gender" do
    patch gender_url(@gender), params: { gender: { identity: @gender.identity } }, as: :json
    assert_response 200
  end

  test "should destroy gender" do
    assert_difference('Gender.count', -1) do
      delete gender_url(@gender), as: :json
    end

    assert_response 204
  end
end
