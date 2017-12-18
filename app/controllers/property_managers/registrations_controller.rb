class PropertyManagers::RegistrationsController < ApplicationController

	before_action :block_current_user, only: [:new]

	def new
		@manager = PropertyManager.new
	end

	def create
		@manager = PropertyManager.new(property_manager_params)
		if @manager.save
			session[:email] = @manager.email
			redirect_to property_manager_path(@manager)
		else		
			render 'new'
		end
	end

end