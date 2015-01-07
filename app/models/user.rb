class User < ActiveRecord::Base
	has_many :kids

	validates :password_confirmation, presence: true
	validates :email, presence: true

	has_secure_password
end
