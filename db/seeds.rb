# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name: "Michael Reeves",
    email: "michael@email.com",
    password: "password",
    password_confirmation: "password")

User.create!(name: "Maurice George",
email: "maurice.george@example.com",
password: "password",
password_confirmation: "password")


    #rails db:migrate:reset db:seed
    #rails db:drop
    #rails db:migrate
    #rails db:seed
# More than 1 user
99.times do |n|
name = Faker::Food.fruits #=> "Peaches"
email = "user#{n+1}@email.com"
password = "password"

User.create!(name: name,
        email: email,
        password: password,
        password_confirmation: password)
end