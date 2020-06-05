# require 'test_helper'

# class UsersControllerTest < ActionDispatch::IntegrationTest
#   setup do
#     @user = users(:one)
#   end

#   test "should get index" do
#     get users_url, as: :json
#     assert_response :success
#   end

#   test "should create user" do
#     assert_difference('User.count') do
#       post users_url, params: { user: { bio: @user.bio, city: @user.city, dob: @user.dob, email: @user.email, fname: @user.fname, gender_id: @user.gender_id, is_active: @user.is_active, is_banned: @user.is_banned, is_private: @user.is_private, last_active: @user.last_active, lname: @user.lname, password_digest: @user.password_digest, post_code: @user.post_code, profile_image: @user.profile_image, username: @user.username } }, as: :json
#     end

#     assert_response 201
#   end

#   test "should show user" do
#     get user_url(@user), as: :json
#     assert_response :success
#   end

#   test "should update user" do
#     patch user_url(@user), params: { user: { bio: @user.bio, city: @user.city, dob: @user.dob, email: @user.email, fname: @user.fname, gender_id: @user.gender_id, is_active: @user.is_active, is_banned: @user.is_banned, is_private: @user.is_private, last_active: @user.last_active, lname: @user.lname, password_digest: @user.password_digest, post_code: @user.post_code, profile_image: @user.profile_image, username: @user.username } }, as: :json
#     assert_response 200
#   end

#   test "should destroy user" do
#     assert_difference('User.count', -1) do
#       delete user_url(@user), as: :json
#     end

#     assert_response 204
#   end
# end
