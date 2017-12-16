class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user

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

end


#