class Tenant < ApplicationRecord
  belongs_to :property
  has_many :invoices
  has_many :maintenance_requests
  has_many :meetings

  delegate :property_manager, to: :property

  has_secure_password

  def current_invoice
		self.invoices.sort { |x,y| y <=> x }.first
	end

end
