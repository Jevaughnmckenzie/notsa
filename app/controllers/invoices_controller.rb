class InvoicesController < ApplicationController
  def index
  	if current_user.is_a?(Tenant)
			@invoices = current_user.invoices
		elsif current_user.is_a?(PropertyManager)
			@invoices = current_user.tenants.map { |tenants| tenants.invoices }.flatten
		end
  end
end
