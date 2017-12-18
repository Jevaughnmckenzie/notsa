class Tenant < ApplicationRecord
  belongs_to :property
  has_many :bills
  has_many :maintenance_requests
  has_many :meetings

  delegate :property_manager, to: :property

  has_secure_password
end
