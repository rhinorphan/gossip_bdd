# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
  age_user = rand(12..99)
  user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.sentence(word_count: 3, supplemental: true, random_words_to_add: 4), email: Faker::Internet.free_email, age: age_user)
end 

10.times do 
  city = City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end