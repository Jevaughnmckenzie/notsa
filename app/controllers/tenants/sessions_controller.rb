class Tenants::SessionsController < ApplicationController
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

	def destroy
		session.delete :email
		redirect_to tenants_new_path
	end
end