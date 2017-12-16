class RegistrationController < ApplicationController
	def new

	end

	def create
		user = Tenant.new(new_tenant_params)

		if user.save
			redirect_to '/'
		else
			render 'new'
		end
	end
end


#Sign up page
	#create 'new' view
		#form for signup page
			#name
			#email
			#phone_number
			#password
			#password_confirmation
			#submit_button
	#create action
