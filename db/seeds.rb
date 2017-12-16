# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do
	PropertyManager.create(name: Faker::Name.name,
												email: Faker::Internet.email,
										 password: 'password',
								 phone_number: Faker::PhoneNumber.cell_phone,
								 			company: "#{Faker::Company.name} Managment"
								 			)
end

4.times do
	Property.create(title: "#{Faker::Address.street_name} townhouse",
							 location: "#{Faker::Address.street_address} #{Faker::Address.city}, #{Faker::Address.state_abbr}",
							 		rooms: Faker::Number.between(1, 4),
			 property_manager: PropertyManager.all[rand(PropertyManager.all.count)]
			 )
end
