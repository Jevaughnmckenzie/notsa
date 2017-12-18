class PropertiesController < ApplicationController
	def index
		if current_user.is_a?(PropertyManager)
			@properties = current_user.properties
		else
			redirect_to login_property_managers_path
		end
	end

	def new
		@property = Property.new
	end

	def create
		@property = current_user.properties.build(property_params)

		if @property && @property.save
			redirect_to property_path(@property)
		else
			render 'new'
		end
	end

	def show
		@property = Property.find(params[:id])
		@active_maintenance_requests = @property.active_requests
	end


	private 

	def property_params
		params.require(:property).permit(:title, :location, :rooms, :available_rooms )
	end
end
