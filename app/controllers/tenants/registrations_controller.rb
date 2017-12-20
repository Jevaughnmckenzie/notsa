class Tenants::RegistrationsController < ApplicationController

	before_action :block_current_user, only: [:new]

	def new
		@tenant = Tenant.new
	end

	def create
		@tenant = Tenant.new(tenant_params)
		@tenant.property = Property.all[rand(Property.count)]
		create_user_model(@tenant)
	end

end