# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.where(name: "Web Development").first_or_create(name: "Web Development")
Category.where(name: "Design").first_or_create(name: "Design")
Category.where(name: "Backend").first_or_create(name: "Backend")
Category.where(name: "Frontend").first_or_create(name: "Frontend")
Category.where(name: "Wordpress").first_or_create(name: "Wordpress")
Category.where(name: "PHP").first_or_create(name: "PHP")
Category.where(name: "Sales").first_or_create(name: "Sales")
location = [
"Denver, CO",
"San Francisko, CA",
"Mineapolis, MN",
"New York, NY",
"Atlanta, GA"
]
User.where(email: "bob@example.com").first_or_create(email: "Bob Green", password: "pw")

10.times do
	sleep 0.25
	User.create(email: Faker::Internet.email, password: "pw")
end

100.times do
	Gig.create(name: Faker::Name.title,
		description: Faker::Lorem.paragraph(2),
		budget: rand(200..10000),
		location: location.sample,
		user_id: rand(1..10),
		category_id: rand(1..3))

end
