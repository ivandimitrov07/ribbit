class RibitsController < ApplicationController

	def index
		@ribits = Ribit.all
		@ribit = Ribit.new
	end

	def create
		ribit = Ribit.new(params[:ribit])
		ribit.user_id = current_user.id

		flash[:error] = "Ribbit is too long!" unless ribit.save
		
		redirect_to ribits_url
	end
end
