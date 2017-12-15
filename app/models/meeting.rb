class Meeting < ApplicationRecord
  belongs_to :tenant
  belongs_to :property_manager
end
