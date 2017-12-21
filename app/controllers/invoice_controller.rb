class InvoiceController < ApplicationController
  def index
  	if current_user.is_a?(Tenant)
			@requests = current_user.invoices
		elsif current_user.is_a?(PropertyManager)
			@requests = current_user.tenants.map { |tenants| tenants.invoices }.flatten
		end
  end
end
