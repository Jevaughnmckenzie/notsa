class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user

  protected

  def current_user
  	if session[:email]
  		if tenant = Tenant.find_by(email: session[:email])
  			tenant
  		elsif manager = PropertyManager.find_by(email: session[:email])
  			manager
  		else
  			raise "Error. Unidentified email in session"
  		end
  	else
  		nil
  	end
  end

  private

  def set_tenant
  	# tenant = Tenant.find_by(id)
  end

	def tenant_params
		params.require(:tenant).permit(:name, :email, :phone_number, :password, :password_confirmation)
	end

	def property_manager_params
		params.require(:property_manager).permit(:name, :email, :phone_number, :company, :password, :password_confirmation)
	end

  def block_current_user
    if current_user
      redirect_to current_user
    end
  end

  def block_guest
    unless current_user
      redirect_to '/'
    end
  end

  def block_tenant
    if current_user.is_a?(Tenant)
      redirect_to login_property_managers_path
    end
  end

end


#