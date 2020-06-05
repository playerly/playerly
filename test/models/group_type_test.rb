require 'test_helper'

class GroupTypeTest < ActiveSupport::TestCase
	
	def setup
		@group_type = group_types(:club)
	end

	test "should be valid" do
		assert @group_type.valid?
	end

	test "group type option should be present" do
		@group_type.option = ""
		assert_not @group_type.valid?
	end

	test "group type should not exceed limit (20 characters)" do
		@group_type.option = "a" * 21
		assert_not @group_type.valid?
	end
	
	test "group type should be unique" do
		duplicate_user = @group_type.dup
		@group_type.save
		assert_not duplicate_user.valid?
	end
	
end
