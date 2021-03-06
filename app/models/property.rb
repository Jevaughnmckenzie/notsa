class Property < ApplicationRecord
  belongs_to :property_manager
  has_many :tenants
  has_many :maintenance_requests

  def active_requests
  	self.tenants.map { |tenant| tenant.maintenance_requests }.flatten
  end

  def available_rooms
  	self.rooms - self.tenants.count
  end

  def has_rooms?
  	self.available_rooms > 0
  end
  
end
