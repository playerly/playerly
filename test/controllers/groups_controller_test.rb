# require 'test_helper'

# class GroupsControllerTest < ActionDispatch::IntegrationTest
#   setup do
#     @group = groups(:one)
#   end

#   test "should get index" do
#     get groups_url, as: :json
#     assert_response :success
#   end

#   test "should create group" do
#     assert_difference('Group.count') do
#       post groups_url, params: { group: { address: @group.address, approval_type_id: @group.approval_type_id, city: @group.city, description: @group.description, email: @group.email, group_type_id: @group.group_type_id, has_max_capacity: @group.has_max_capacity, has_skill_requirement: @group.has_skill_requirement, is_active: @group.is_active, is_banned: @group.is_banned, is_private: @group.is_private, max_capacity: @group.max_capacity, name: @group.name, phone: @group.phone, post_code: @group.post_code, profile_image: @group.profile_image, skill_level_id: @group.skill_level_id, sport_id: @group.sport_id, state: @group.state } }, as: :json
#     end

#     assert_response 201
#   end

#   test "should show group" do
#     get group_url(@group), as: :json
#     assert_response :success
#   end

#   test "should update group" do
#     patch group_url(@group), params: { group: { address: @group.address, approval_type_id: @group.approval_type_id, city: @group.city, description: @group.description, email: @group.email, group_type_id: @group.group_type_id, has_max_capacity: @group.has_max_capacity, has_skill_requirement: @group.has_skill_requirement, is_active: @group.is_active, is_banned: @group.is_banned, is_private: @group.is_private, max_capacity: @group.max_capacity, name: @group.name, phone: @group.phone, post_code: @group.post_code, profile_image: @group.profile_image, skill_level_id: @group.skill_level_id, sport_id: @group.sport_id, state: @group.state } }, as: :json
#     assert_response 200
#   end

#   test "should destroy group" do
#     assert_difference('Group.count', -1) do
#       delete group_url(@group), as: :json
#     end

#     assert_response 204
#   end
# end
