# require 'test_helper'

# class UserSportsControllerTest < ActionDispatch::IntegrationTest
#   setup do
#     @user_sport = user_sports(:one)
#   end

#   test "should get index" do
#     get user_sports_url, as: :json
#     assert_response :success
#   end

#   test "should create user_sport" do
#     assert_difference('UserSport.count') do
#       post user_sports_url, params: { user_sport: { skill_level_id: @user_sport.skill_level_id, sport_id: @user_sport.sport_id, user_id: @user_sport.user_id } }, as: :json
#     end

#     assert_response 201
#   end

#   test "should show user_sport" do
#     get user_sport_url(@user_sport), as: :json
#     assert_response :success
#   end

#   test "should update user_sport" do
#     patch user_sport_url(@user_sport), params: { user_sport: { skill_level_id: @user_sport.skill_level_id, sport_id: @user_sport.sport_id, user_id: @user_sport.user_id } }, as: :json
#     assert_response 200
#   end

#   test "should destroy user_sport" do
#     assert_difference('UserSport.count', -1) do
#       delete user_sport_url(@user_sport), as: :json
#     end

#     assert_response 204
#   end
# end
