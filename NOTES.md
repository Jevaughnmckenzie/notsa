Property Management App

Manager
	- name
	- email
	- password
	- phone_number
	- company
	- has_many properties
	- has many tenants through properties
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
	- has_many maintenance_requests
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
	- belongs_to property
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

Routes
	- homepage - Tenant
		- property name
		- tenant name
		- current bill
			- current bill due date 
			- current bill amount
			- button to pay bill if unpaid or label that says "Paid"
		- next scheduled meeting
			- link to all scheduled meetings
		- list of active maintenance requests
			- link to all maintenance requests


Features
	- Sessions
		- Guest can only access login, signup, or root pages if not logged in
	- home page
		- displays welcome with name of user
		- Tenant
			- displays property name and location for tenant
			- displays property manager name and contact for tenant
			- displays next bill due and status of that bill for tenant
			- displays link to pay bill for tenant
			- has link to create a new maintenance request for tenant
			- has link to schedule a meeting with property manager
		- Manager
			- displays link to view each property's show page
			- displays a link to view maintenance requests
			- displays the next upcoming scheduled meeting and also a link to all sheduled meetings
	- Properties
	 	- Manager
		 	- index page for all properties under management
		 	- link to new properrty page on index page
		 	- links to each property's show page
	 	- Show pages
	 		- Displays name of property
	 		- displays # of rooms (total and available)
	 		- diplays location
	 		- displays a link to tenants index page for that property
	 		- lists titles of active maintenance requests and links to thier respective show pages
	- Maintenance Requests
		- Tenant
			- Index
			 	- page shows all maintenance requests for the logged in tenant
				- maintenance requests are seperated by active and inactive
				- active are listed on top
				- shows subject, date created, and whether it was completed
				- subject links to the show page for the individual request
				- link to create a new request
				- link to cancel a request
			- Show
				- displays the subject, date created, completion status
				- displays the full description
				- link to cancel (delete)
				- link to contact property manager
				- link back to all maintenance requests
		-	Manager
			- Index
				- button to 'mark completed by each subject'
				- does not have link to create a new request
			- show
				- displays the subject, date created, completion status
				- displays the full description
				- button to mark as 'completed'
				- maybe a link to contact tenant who made request

Little Features that should not be forgotten
	- a newly instantiated maintenance request should have its 'completed?' attribute default to 'false'
	- when a property manager creates a new tenant from his side, their password should default to 'password'


	Testing out Maintenance requests from the manager's point of view
		- see maintenance requests from all properties
			- need to sub out some properties for my test manager
			- need to stub out some tenants for manager
				- tenants will attatch themself to a property



