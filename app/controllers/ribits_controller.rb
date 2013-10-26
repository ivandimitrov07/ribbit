class RibitsController < ApplicationController

	def create
		ribit = Ribit.new(params[:ribit])
		ribit.user_id = current_user.id

		flash[:error] = "Ribbit is too long!" unless ribit.save
		
		redirect_to root_url
	end
end
