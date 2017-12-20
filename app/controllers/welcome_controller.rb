class WelcomeController < ApplicationController
	
	before_action :block_current_user

	def home
		render 'welcome'
	end
end