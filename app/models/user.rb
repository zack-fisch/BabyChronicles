class User < ActiveRecord::Base
	has_many :children
	
	validates :password, presence: true
	validates :password_confirmation, presence: true
	validates :email, presence: true

	has_secure_password
end
