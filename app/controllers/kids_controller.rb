class KidsController < ApplicationController

	def new
		@user = User.find(params[:user_id])
		@kid = @user.kids.new
	end

	def create
		@user = User.find(params[:user_id])
		@kid = @user.kids.create(kid_params)
		if @kid.save 
			redirect_to @user
		else
			render :new
		end
	end

	private

	def kid_params
		params.require(:kid).permit(:parent1, :parent2, :parent1bio, :parent2bio, :bio, :birthday,)
	end

end
