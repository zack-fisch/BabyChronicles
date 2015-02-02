class UserMailer < ApplicationMailer

	def welcome_email(user)
		@user = user
		@url = 'http://babychronices.herokuapp.com'
		mail(to: @user.email, subject: 'Thanks for signing up for BabyChronicles!')
	end
end
