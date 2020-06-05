class Gender < ApplicationRecord
	validates :identity, presence: true, length: { maximum: 20 }, uniqueness: true
end
