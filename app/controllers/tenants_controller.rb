class TenantsController < ApplicationController
	def new
		@tenant = Tenant.new
	end

	def create
		user = Tenant.new(tenant_params)
		user.property = Property.all[rand(Property.count)]
		if user.save
			redirect_to '/'
		else
			
			render 'new'
		end
	end

	def tenant_params
		params.require(:tenant).permit(:name, :email, :phone_number, :password, :password_confirmation)
	end
end
 