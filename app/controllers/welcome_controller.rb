class WelcomeController < ApplicationController
	def home
		if current_user
			redirect_to current_user
		else
			render 'welcome'
		end
	end
end