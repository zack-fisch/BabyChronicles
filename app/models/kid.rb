class Kid < ActiveRecord::Base
	belongs_to :user

	validates :parent1, presence: true
	validates :parent2, presence: true
	validates :parent1bio, presence: true
	validates :parent2bio, presence: true
	validates :bio, presence: true
	validates :birthday, presence: true
end
