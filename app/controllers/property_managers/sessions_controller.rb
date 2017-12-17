class PropertyManagers::SessionsController < ApplicationController

	def new
		@manager = PropertyManager.new
	end

	def create
		@manager = PropertyManager.find_by(email: manager_params[:email])
		if @manager.save
			session[:email] = @manager.email
			redirect_to property_manager_path(@manager)
		else		
			render 'login/property_managers'
		end
	end

	def destroy
		session.delete :email
		redirect_to login_path
	end
end