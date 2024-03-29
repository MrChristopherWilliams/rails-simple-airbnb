# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Flat.destroy_all
4.times do
  Flat.create!(
    name: Faker::Ancient.god,
    address: Faker::Address.city,
    description: Faker::Cannabis.health_benefit,
    price_per_night: rand(1000),
    number_of_guests: rand(4)
  )
end
