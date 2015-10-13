# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

50.times do
  User.create(
    firstname: Faker::Name.first_name,
    lastname: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "testtest",
    password_confirmation: "testtest",
    address: Faker::Address.street_address,
    zip_code: Faker::Address.postcode
    )
end

20.times do
  Shopper.create(
    user_id: rand(1..50),
    default_radius: 5
    )
end

20.times do
  Availability.create(
    shopper_id: rand(1..20),
    date: Faker::Date.forward(10),
    )
end

50.times do
  Shop.create(
    name: Faker::Company.name,
    category: Faker::Commerce.department(2,true),
    country: ("France"),
    city: ("Paris"),
    street_and_number: Faker::Address.street_address,
    zip_code: 75014,
    description: Faker::Lorem.sentences(1)
    )
end

