class MaintenanceRequestsController < ApplicationController
	
	before_action :block_guest

	def index
		if current_user.is_a?(Tenant)
			@requests = current_user.maintenance_requests
		elsif current_user.is_a?(PropertyManager)
			@requests = current_user.properties.map { |property| property.maintenance_requests }.flatten
		end
	end

	def new
		@request = MaintenanceRequest.new
	end

	def create
		@request = current_user.maintenance_requests.build(subject: maintenance_requests_params[:subject], description: maintenance_requests_params[:description], completed?: false, property: current_user.property)

		if @request.save
			redirect_to @request
		else
			render 'new'
		end
	end

	def show
		@request = MaintenanceRequest.find(params[:id])
	end

	def update
		@request = MaintenanceRequest.find(params[:id])
		@request.update(completed?: true)
		redirect_to @request
	end

	def destroy
		MaintenanceRequest.find(params[:id]).destroy
		redirect_to maintenance_requests_path
	end

	private

	def maintenance_requests_params
		params.require(:maintenance_request).permit(:subject, :description)
	end
end
