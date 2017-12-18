class MaintenanceRequestsController < ApplicationController
	def new
		@request = MaintenanceRequest.new
	end
end
