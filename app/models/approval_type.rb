class ApprovalType < ApplicationRecord
	validates :option, presence: true, length: { maximum: 10 }, uniqueness: true
end
