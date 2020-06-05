require 'test_helper'

class ApprovalTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @approval_type = approval_types(:automatic)
  end

  test "should get index" do
    get approval_types_url, as: :json
    assert_response :success
  end

=begin
  test "should create approval_type" do
    assert_difference('ApprovalType.count') do
      post approval_types_url, params: { approval_type: { option: @approval_type.option } }, as: :json
    end

    assert_response 201
  end
=end

  test "should show approval_type" do
    get approval_type_url(@approval_type), as: :json
    assert_response :success
  end

  test "should update approval_type" do
    patch approval_type_url(@approval_type), params: { approval_type: { option: @approval_type.option } }, as: :json
    assert_response 200
  end

  test "should destroy approval_type" do
    assert_difference('ApprovalType.count', -1) do
      delete approval_type_url(@approval_type), as: :json
    end

    assert_response 204
  end
end
