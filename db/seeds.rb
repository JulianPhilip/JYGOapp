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
    zip_code: 75016,
    city: "Paris"
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

Product.create(category:'Poissonnerie', sub_category:'Poissons entiers', name:'Aile de Raie', key_words:'', min_price:'1,23', max_price:'3,76', difficulty:'', unit:'kilogramme(s)')
Product.create(category:'Poissonnerie', sub_category:'Poissons entiers', name:'Bar', key_words:'', min_price:'1,23', max_price:'3,76', difficulty:'', unit:'kilogramme(s)')
Product.create(category:'Poissonnerie', sub_category:'Poissons entiers', name:'Daurade Royale', key_words:'', min_price:'1,23', max_price:'3,76', difficulty:'', unit:'kilogramme(s)')
Product.create(category:'Poissonnerie', sub_category:'Poissons entiers', name:'Maquereau', key_words:'', min_price:'1,23', max_price:'3,76', difficulty:'', unit:'kilogramme(s)')
Product.create(category:'Poissonnerie', sub_category:'Poissons entiers', name:'Queue de Lotte', key_words:'', min_price:'1,23', max_price:'3,76', difficulty:'', unit:'kilogramme(s)')
Product.create(category:'Poissonnerie', sub_category:'Poissons entiers', name:'Lotte', key_words:'', min_price:'1,23', max_price:'3,76', difficulty:'', unit:'kilogramme(s)')
Product.create(category:'Poissonnerie', sub_category:'Poissons entiers', name:'Merlu', key_words:'', min_price:'1,23', max_price:'3,76', difficulty:'', unit:'kilogramme(s)')
Product.create(category:'Poissonnerie', sub_category:'Poissons entiers', name:'Saint Pierre', key_words:'', min_price:'1,23', max_price:'3,76', difficulty:'', unit:'kilogramme(s)')
Product.create(category:'Poissonnerie', sub_category:'Poissons entiers', name:'Saumon', key_words:'', min_price:'1,23', max_price:'3,76', difficulty:'', unit:'kilogramme(s)')
Product.create(category:'Poissonnerie', sub_category:'Poissons entiers', name:'Sole', key_words:'', min_price:'1,23', max_price:'3,76', difficulty:'', unit:'kilogramme(s)')
Product.create(category:'Boucherie', sub_category:'Volailles', name:'Caille', key_words:'', min_price:'1,23', max_price:'3,76', difficulty:'', unit:'kilogramme(s)')
Product.create(category:'Boucherie', sub_category:'Volailles', name:'Canard entier', key_words:'', min_price:'1,23', max_price:'3,76', difficulty:'', unit:'kilogramme(s)')
Product.create(category:'Boucherie', sub_category:'Volailles', name:'Canette fermière', key_words:'', min_price:'1,23', max_price:'3,76', difficulty:'', unit:'kilogramme(s)')
Product.create(category:'Boucherie', sub_category:'Volailles', name:'Cuisse de canard confite', key_words:'', min_price:'1,23', max_price:'3,76', difficulty:'', unit:'kilogramme(s)')
Product.create(category:'Boucherie', sub_category:'Volailles', name:'Coquet', key_words:'', min_price:'1,23', max_price:'3,76', difficulty:'', unit:'kilogramme(s)')
Product.create(category:'Boucherie', sub_category:'Volailles', name:'Chapon', key_words:'', min_price:'1,23', max_price:'3,76', difficulty:'', unit:'kilogramme(s)')


User.create(
    firstname: Faker::Name.first_name,
    lastname: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "testtest",
    password_confirmation: "testtest",
    address: "16 rue de Passy",
    zip_code: 75016,
    city: "Paris"
    )
User.create(
    firstname: Faker::Name.first_name,
    lastname: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "testtest",
    password_confirmation: "testtest",
    address: "16 avenue Paul Doumer",
    zip_code: 75016,
    city: "Paris"
    )
