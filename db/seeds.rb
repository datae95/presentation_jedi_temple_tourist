# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Customer.create([{
  name: "Shev Palpatine",
  email: "palpatine@senat.gov",
  birthdate: "01.02.1954".to_date
}, {
  name: "Padme Amidala",
  email: "amidala@senat.gov",
  birthdate: "04.06.1992".to_date
}])

Service.create([{
  name: "Jedi Temple Tour",
  duration_in_min: 120,
  price: 240.00
}, {
  name: "Lightsaber Show Fight",
  duration_in_min: 30,
  price: 60.00
}])

Article.create([{
  service: Service.first,
  customer: Customer.first,
  meeting_point: "Great Hall",
  start_at: Date.tomorrow.midday
}, {
  service: Service.second,
  customer: Customer.second,
  meeting_point: "Training Hall 4",
  start_at: Date.tomorrow.midday
}])