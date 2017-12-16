class WelcomeController < ApplicationController
	def home
		if session[:email]

			@user = current_user
			@property = current_user.property
			render 'home'
		else
			redirect_to '/login'
		end
	end
end