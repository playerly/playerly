require 'test_helper'

class GroupTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_type = group_types(:club)
  end

  test "should get index" do
    get group_types_url, as: :json
    assert_response :success
  end

=begin
  test "should create group_type" do
    assert_difference('GroupType.count') do
      post group_types_url, params: { group_type: { option: @group_type.option } }, as: :json
    end

    assert_response 201
  end
=end

  test "should show group_type" do
    get group_type_url(@group_type), as: :json
    assert_response :success
  end

  test "should update group_type" do
    patch group_type_url(@group_type), params: { group_type: { option: @group_type.option } }, as: :json
    assert_response 200
  end

  test "should destroy group_type" do
    assert_difference('GroupType.count', -1) do
      delete group_type_url(@group_type), as: :json
    end

    assert_response 204
  end
end
