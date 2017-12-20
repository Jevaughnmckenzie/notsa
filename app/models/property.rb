class Property < ApplicationRecord
  belongs_to :property_manager
  has_many :tenants
  has_many :maintenance_requests

  def active_requests
  	self.tenants.map { |tenant| tenant.maintenance_requests }.flatten
  end
  
end
