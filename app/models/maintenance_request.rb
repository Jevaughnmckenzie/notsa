class MaintenanceRequest < ApplicationRecord
  belongs_to :property, dependent: :destroy
  belongs_to :tenant, dependent: :destroy
end
