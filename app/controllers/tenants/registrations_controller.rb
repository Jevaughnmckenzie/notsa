class Tenants::RegistrationsController < ApplicationController

	def new
		@tenant = Tenant.new
	end

	def create
		user = Tenant.new(tenant_params)
		user.property = Property.all[rand(Property.count)]
		if user.save
			session[:email] = user.email
			redirect_to '/'
		else		
			render 'new'
		end
	end

end