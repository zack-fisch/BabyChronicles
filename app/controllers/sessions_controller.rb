class SessionsController < ApplicationController

	def new

	end

	def create
		user = User.find_by(email: params[:email])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to root_url
		else
			flash.now[:alert] = "Invalid email or password!"
			render "new"
	end

	def destroy

	end
end
