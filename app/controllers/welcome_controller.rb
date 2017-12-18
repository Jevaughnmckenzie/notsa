class WelcomeController < ApplicationController
	def home
		if current_user
			redirect_to current_user
		else
			redirect_to '/login'
		end
	end
end