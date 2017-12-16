class WelcomeController < ApplicationController
	def home
		if session[:email]
			render 'home'
		else
			redirect_to '/login'
		end
	end
end