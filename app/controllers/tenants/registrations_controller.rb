class Tenants::RegistrationsController < ApplicationController

	def new
		@tenant = Tenant.new
	end

	def create
		@tenant = Tenant.new(tenant_params)
		@tenant.property = Property.all[rand(Property.count)]
		if @tenant.save
			session[:email] = @tenant.email
			redirect_to '/'
		else		
			render 'new'
		end
	end

end