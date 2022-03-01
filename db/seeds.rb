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

file = File.open(Rails.root.join("app/assets/images/ratna.png"))
ratna = User.new(first_name: "Ratna", last_name: "Purwati", address: "Canggu", email: "ratna@gmail.com", password: "123123")
ratna.avatar.attach(io: file, filename: 'nes.png', content_type: 'image/png')
ratna.save!

file = File.open(Rails.root.join("app/assets/images/nina.jpg"))
nina = User.new(first_name: "Christina", last_name: "Sugiono", address: "Denpasar", email: "christina@gmail.com", password: "123123")
nina.avatar.attach(io: file, filename: 'nes.png', content_type: 'image/png')
nina.save!

file = File.open(Rails.root.join("app/assets/images/jess.jpg"))
jess = User.new(first_name: "Jess", last_name: "Wong", address: "Kuala Lumpur", email: "jess@gmail.com", password: "123123")
jess.avatar.attach(io: file, filename: 'nes.png', content_type: 'image/png')
jess.save!

file = File.open(Rails.root.join("app/assets/images/louboutin_heels.jpeg"))
item = Item.new(name: "Heels", description: "12CM", price: "5.000", brand: "Christian Loubutin", category: "Shoes", user: ratna)
item.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
# Item.new(name: "Heels", description: "12CM", price: "5.000", brand: "Christian Loubutin", category: "Shoes")
item.save!
puts 'Finished!'
