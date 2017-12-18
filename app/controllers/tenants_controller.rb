class TenantsController < ApplicationController
	

	def show
		if session[:email]

			@user = current_user
			@property = current_user.property
			
		else
			render '/login'
		end
	end



end
 