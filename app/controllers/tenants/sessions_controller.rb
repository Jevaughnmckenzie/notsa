class Tenants::SessionsController < ApplicationController

	def new
		@tenant = Tenant.new
	end

	def create
		tenant = Tenant.find_by(email: tenant_params[:email])
		if tenant.save
			session[:email] = tenant.email
			redirect_to '/'
		else		
			render 'login'
		end
	end

	def destroy
		session.delete :email
		redirect_to signup_path
	end
end