# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# Create User
10.times do
    User.create!(
        username:   Faker::Internet.username,
        email:      Faker::Internet.email,
        password:   Faker::Internet.password(10, 20, true)
    )
end
users = User.all

# Create Lists
10.times do
    list = List.create!(
        user: users.sample,
        name:       Faker::Internet.domain_word)
end
lists = List.all

# Create Items
50.times do
    item = Item.create!(
        list: lists.sample,
        entry:  Faker::Internet.url
    )
end
items = Item.all


puts 'Seed finished'
puts "#{User.count} users created"
puts "#{List.count} lists created"
puts "#{Item.count} items created"