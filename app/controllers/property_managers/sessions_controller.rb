class PropertyManagers::SessionsController < ApplicationController

	def new
		@manager = PropertyManager.new
	end

	def create
		@manager = PropertyManager.find_by(email: property_manager_params[:email])
		if @manager && @manager.save 
			session[:email] = @manager.email
			redirect_to property_manager_path(@manager)
		elsif @manager.nil?
				@manager = PropertyManager.new
				flash[:alert] = "Email or password is invalid"
				render 'new'
		else		
			render 'new'
		end
	end

	def destroy
		session.delete :email
		redirect_to login_property_managers_path
	end
end