class Tenants::SessionsController < ApplicationController

	before_action :block_current_user, only: [:new]
	
	def new
		@tenant = Tenant.new
	end

	def create
		@tenant = Tenant.find_by(email: tenant_params[:email])
		if @tenant.save
			session[:email] = @tenant.email
			redirect_to @tenant
		else		
			render 'new'
		end
	end

	def destroy
		session.delete :email
		redirect_to '/'
	end
end