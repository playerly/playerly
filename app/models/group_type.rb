class GroupType < ApplicationRecord
	validates :option, presence: true, length: { maximum: 20 }, uniqueness: true
end
