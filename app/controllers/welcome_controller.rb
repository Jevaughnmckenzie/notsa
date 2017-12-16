class WelcomeController < ApplicationController
	def home
		if session[:email]
			render 'home'
		else
			redirect_to '/tenants/new'
		end
	end
end