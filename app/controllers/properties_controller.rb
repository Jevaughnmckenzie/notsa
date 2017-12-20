class PropertiesController < ApplicationController
	before_action :block_guest 
	before_action :block_tenant, only: [:index]

	def index
		@properties = current_user.properties
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
