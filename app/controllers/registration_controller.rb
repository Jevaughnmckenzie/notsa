class RegistrationController < ApplicationController
	# def new
	# 	@tenant = Tenant.new
	# end

	# def create
	# 	user = Tenant.new(tenant_params)

	# 	if user.save
	# 		redirect_to '/'
	# 	else
	# 		render 'new'
	# 	end
	# end

	# def tenant_params
	# 	params.require(:tenant).permit(:name, :email, :phone_number, :password, :password_confirmation)
	# end
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