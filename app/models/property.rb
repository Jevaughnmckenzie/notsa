class Property < ApplicationRecord
  belongs_to :property_manager
  has_many :tenants
  
end
