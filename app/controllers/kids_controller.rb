class KidsController < ApplicationController

	def new
		@user = User.find(params[:user_id])
		@kid = @user.kids.new
	end

	def create
		@user = User.find(params[:user_id])
		@kid = @user.kids.new
	end

end
