require 'test_helper'

class GenderTest < ActiveSupport::TestCase
	
	def setup
		@gender = genders(:male)
	end

	test "should be valid" do
		assert @gender.valid?
	end

	test "identity title should be present" do
		@gender.identity = ""
		assert_not @gender.valid?
	end

	test "identity title should not exceed limit (20 characters)" do
		@gender.identity = "a" * 21
		assert_not @gender.valid?
	end
	
	test "identity should be unique" do
		duplicate_user = @gender.dup
		@gender.save
		assert_not duplicate_user.valid?
	end

end
