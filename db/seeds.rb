# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
50.times.each do
  User.create(
    name: Faker::Name.name,
    age: Faker::Number.between(10, 40),
    gender: ["male", "female"].sample,
    food: Faker::Food.ingredient,
    city: Faker::Address.city
  )
end

for i in 1..10 do
  Post.create(
    content: Faker::Internet.email
  )
end

for i in 1..9 do
  for j in i+1..10 do
    Like.create(
      user_id: i,
      post_id: j,
      status: ["Good", "Bad"].sample
    )
  end
end
