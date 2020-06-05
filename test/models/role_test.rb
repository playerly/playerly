require 'test_helper'

class RoleTest < ActiveSupport::TestCase
  
	def setup
		@role = roles(:request)
	end

	test "should be valid" do
		assert @role.valid?
	end

	test "group type name should be present" do
		@role.name = ""
		assert_not @role.valid?
	end

	test "group type name should not exceed limit (25 characters)" do
		@role.name = "a" * 26
		assert_not @role.valid?
	end
	
	test "group type should be unique" do
		duplicate_user = @role.dup
		@role.save
		assert_not duplicate_user.valid?
	end
	
end
