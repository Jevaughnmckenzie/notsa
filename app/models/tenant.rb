class Tenant < ApplicationRecord
  belongs_to :property
  has_many :bills
  has_many :maintenance_requests
  has_many :meetings

  has_secure_password
end
