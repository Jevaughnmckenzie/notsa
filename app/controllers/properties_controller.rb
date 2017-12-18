class PropertiesController < ApplicationController
	def index
		if current_user.is_a?(PropertyManager)
			@properties = current_user.properties
		else
			redirect_to login_property_managers_path
		end
	end
end
