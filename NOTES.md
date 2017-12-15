Project Management App

Manager
	- name
	- email
	- password
	- phone_number
	- company
	- has_many properties
	- has many tenants through property
property
	- manager_id
	- tenants
	- location
	- rooms
	- available_rooms
	- belongs_to a property manager
	- has_many tenants
account
	- manager_id
	- tenent_id
	- property_id
	- bills
	- service_requests
Service requests
	- subject
	- description
	- created_at
	- completed?
	- completed_at
Bill
	- amount_due
	- due_date
	- overdue?
	- late_fee
	- payment_option
	- paid?
Scheduled Meetings (between manager and tenent)
	- date_time
	- manager_id
	- tenent_id
