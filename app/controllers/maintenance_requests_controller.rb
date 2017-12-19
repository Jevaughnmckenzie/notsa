class MaintenanceRequestsController < ApplicationController
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

	def index
		@requests = current_user.maintenance_requests
	end

	private

	def maintenance_requests_params
		params.require(:maintenance_request).permit(:subject, :description)
	end
end
