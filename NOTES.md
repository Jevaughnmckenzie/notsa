Project Management App

Manager
	- name
	- email
	- password
	- phone_number
	- company
	- has_many properties
	- has many tenants through properties
	- has_many maintenance_requests
	- has_many meetings
Tenant
	- name
	- email
	- password
	- phone_number
	- belongs_to a property
	- has_many bills
	- has_many maintenance_requests
	- has_many meetings

property
	- title
	- location
	- rooms
	- available_rooms
	- belongs_to a property manager
	- has_many tenants
<!-- account
	- manager_id
	- tenent_id
	- property_id
	- bills
	- service_requests -->
Maintenance requests
	- subject
	- description
	- created_at
	- completed?
	- completed_at
	- belongs_to tenant
	- belongs_to manager
Bill
	- amount_due
	- due_date
	- overdue?
	- late_fee
	- payment_option
	- paid?
	- belongs_to tenant
Meetings (between manager and tenent)
	- subject
	- description
	- date_time
	- manager_id
	- tenent_id
