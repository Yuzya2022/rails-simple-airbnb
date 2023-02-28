# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
5.times do
  name = Faker::Name.unique.name
  address = Faker::Address.street_name
  description = Faker::Name.name
  number_of_guests = rand(1..3)
  price_per_night = [75, 100, 125, 150, 200].sample
  picture_url = 'https://images.unsplash.com/photo-1494526585095-c41746248156?w=1200'
  Flat.create(name: name, address: address, description: description, number_of_guests: number_of_guests, price_per_night: price_per_night, picture_url: picture_url)
  puts "flats created"
end
