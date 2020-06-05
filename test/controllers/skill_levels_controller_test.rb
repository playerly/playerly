require 'test_helper'

class SkillLevelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @skill_level = skill_levels(:beginner)
  end

  test "should get index" do
    get skill_levels_url, as: :json
    assert_response :success
  end

=begin
  test "should create skill_level" do
    assert_difference('SkillLevel.count') do
      post skill_levels_url, params: { skill_level: { name: @skill_level.name } }, as: :json
    end

    assert_response 201
  end
=end

  test "should show skill_level" do
    get skill_level_url(@skill_level), as: :json
    assert_response :success
  end

  test "should update skill_level" do
    patch skill_level_url(@skill_level), params: { skill_level: { name: @skill_level.name } }, as: :json
    assert_response 200
  end

  test "should destroy skill_level" do
    assert_difference('SkillLevel.count', -1) do
      delete skill_level_url(@skill_level), as: :json
    end

    assert_response 204
  end
end
