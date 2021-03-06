class PropertyManager < ApplicationRecord
	has_many :properties
	has_many :tenants, through: :properties
	has_many :meetings

	has_secure_password
end
