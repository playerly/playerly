require 'test_helper'

class SportTest < ActiveSupport::TestCase
  
	def setup
		@sport = sports(:basketball)
	end

	test "should be valid" do
		assert @sport.valid?
	end

	test "sport name should be present" do
		@sport.name = ""
		assert_not @sport.valid?
	end

	test "sport name should not exceed limit (50 characters)" do
		@sport.name = "a" * 51
		assert_not @sport.valid?
	end
	
	test "sport should be unique" do
		duplicate_user = @sport.dup
		@sport.save
		assert_not duplicate_user.valid?
	end
	
end
