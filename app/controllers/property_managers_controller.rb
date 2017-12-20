class PropertyManagersController < ApplicationController

	def show
		@manager = current_user
	end

	def contact
		@manager = current_user.property_manager
	end

end
