class PropertyManagersController < ApplicationController
	before_action :block_guest
	
	def show
		@manager = current_user
	end

	def contact
		@manager = current_user.property_manager
	end

end
