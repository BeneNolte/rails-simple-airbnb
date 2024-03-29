# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do
  post = Flat.new(
    name: Faker::Beer.brand,
    address: Faker::Address.street_address,
    description: Faker::Twitter.status[:text],
    price_per_night: rand(500),
    number_of_guests: rand(10)
  )
  post.save!
end
