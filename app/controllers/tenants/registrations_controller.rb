class Tenants::RegistrationsController < ApplicationController

	before_action :block_current_user, only: [:new]

	def new
		@tenant = Tenant.new
	end

	def create
		@tenant = Tenant.new(tenant_params)
		@tenant.property = Property.all[rand(Property.count)]
		create_user_model(@tenant)
		@tenant.invoices.create(amount_due: 1000,
															due_date: DateTime.now >> 1)
	end

end