class MaintenanceRequest < ApplicationRecord
  belongs_to :property
  belongs_to :tenant
end
