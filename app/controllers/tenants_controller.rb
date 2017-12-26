class TenantsController < ApplicationController
	before_action :block_guest
	before_action :block_tenant, only: [:new, :create]

	def new
		@tenant = Tenant.new
	end

	def create
		@tenant = Tenant.new(tenant_params)
		@tenant.property = current_user.properties[rand(current_user.properties.count)]
		if @tenant.save
			redirect_to @tenant
		else		
			render 'new'
		end
	end

	def show
		if current_user.is_a?(Tenant)
			@tenant = current_user
			@property = current_user.property
		elsif current_user.is_a?(PropertyManager)
			@tenant = Tenant.find(params[:id])
			@property = @tenant.property
		else
			render '/login'
		end
	end

	def destroy
		Tenant.find(params[:id]).delete
		redirect_to current_user
	end

end
 