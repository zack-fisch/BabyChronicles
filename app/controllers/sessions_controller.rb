class SessionsController < ApplicationController

	def new

	end

	def create
		user = User.find_by(email: params[:email])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			debug(params)
			redirect_to root_url
		else
			flash.now[:alert] = "Invalid email or password!"
			render :new
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_url
	end
end
