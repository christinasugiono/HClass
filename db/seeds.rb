# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

User.destroy_all
Item.destroy_all

5.times do |i|
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.street_name,
    email: "user#{i + 1}@gmail.com",
    password: "123123"
  )
  user.save!
end

10.times do
  item = Item.new(
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.sentences(number: 1),
    price: Faker::Commerce.price(range: 50..500),
    brand: Faker::Commerce.brand,
    category: Item::CATEGORIES.sample,
    user: User.all.sample
  )
  image = URI.open('https://assets.hermes.com/is/image/hermesproduct/herbag-zip-cabine-bag--082835CKAC-worn-1-0-0-1700-1700-q99_b.jpg')
  item.photo.attach(io: image, filename: 'nes.png', content_type: 'image/png')
  item.save!

end
puts 'Finished!'
