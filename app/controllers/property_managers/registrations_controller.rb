class PropertyManagers::RegistrationsController < ApplicationController

	before_action :block_current_user, only: [:new]

	def new
		@manager = PropertyManager.new
	end

	def create
		@manager = PropertyManager.new(property_manager_params)
		create_user_model(@manager)
	end

end