require 'test_helper'

class ApprovalTypeTest < ActiveSupport::TestCase

  def setup
		@approval_type = approval_types(:automatic)
	end

	test "should be valid" do
		assert @approval_type.valid?
	end

	test "approval type option should be present" do
		@approval_type.option = ""
		assert_not @approval_type.valid?
	end

	test "approval type option should not exceed limit (10 characters)" do
		@approval_type.option = "a" * 11
		assert_not @approval_type.valid?
	end
	
	test "approval type should be unique" do
		duplicate_user = @approval_type.dup
		@approval_type.save
		assert_not duplicate_user.valid?
	end

end
