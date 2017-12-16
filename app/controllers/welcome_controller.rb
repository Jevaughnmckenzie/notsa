class WelcomeController < ApplicationController
	def home
		if session[:email]
			render 'home'
		else
			redirect_to '/signup'
		end
	end
end