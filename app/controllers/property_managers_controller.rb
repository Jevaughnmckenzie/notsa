class PropertyManagersController < ApplicationController
	before_action :block_guest
	before_action :block_manager, only: [:contact]
	def show
		@manager = current_user
	end

	def contact
		@manager = current_user.property_manager
	end

end
