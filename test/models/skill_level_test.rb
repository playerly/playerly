require 'test_helper'

class SkillLevelTest < ActiveSupport::TestCase
  
	def setup
		@skill_level = skill_levels(:beginner)
	end

	test "should be valid" do
		assert @skill_level.valid?
	end

	test "skill level name should be present" do
		@skill_level.name = ""
		assert_not @skill_level.valid?
	end

	test "skill level name should not exceed limit (20 characters)" do
		@skill_level.name = "a" * 21
		assert_not @skill_level.valid?
	end
	
	test "skill level should be unique" do
		duplicate_user = @skill_level.dup
		@skill_level.save
		assert_not duplicate_user.valid?
	end
	
end
