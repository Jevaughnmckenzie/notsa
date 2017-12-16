class Tenants::SessionsController < ApplicationController

	def new
		@tenant = Tenant.new
	end

	def create

	end

	def destroy
		session.delete :email
		redirect_to signup_path
	end
end