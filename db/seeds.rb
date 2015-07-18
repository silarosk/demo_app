# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
20.times do
  User.create(name: Faker::Name.name, email: Faker::Internet.email)
  Micropost.create(content: Faker::Lorem.sentence(3), user_id: Faker::Number.between(1, 20))
end
