class PropertyManager::RegistrationsController < ApplicationController

	def new
		@tenant = PropertyManager.new
	end

	def create
		user = PropertyManager.new(tenant_params)
		if user.save
			session[:email] = user.email
			redirect_to '/'
		else		
			render 'new'
		end
	end

end