# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "Destroying all users"
User.destroy_all
puts "Destroying all items"
Item.destroy_all

puts "Creating users"
file = File.open(Rails.root.join("app/assets/images/ratna.png"))
ratna = User.new(first_name: "Ratna", last_name: "Purwati", email: "ratna@gmail.com", password: "123123")
ratna.avatar.attach(io: file, filename: 'nes.png', content_type: 'image/png')
ratna.save!

file = File.open(Rails.root.join("app/assets/images/nina.jpg"))
nina = User.new(first_name: "Christina", last_name: "Sugiono", email: "christina@gmail.com", password: "123123")
nina.avatar.attach(io: file, filename: 'nes.png', content_type: 'image/png')
nina.save!

file = File.open(Rails.root.join("app/assets/images/jess.jpg"))
jess = User.new(first_name: "Jess", last_name: "Wong", email: "jess@gmail.com", password: "123123")
jess.avatar.attach(io: file, filename: 'nes.png', content_type: 'image/png')
jess.save!
puts "#{User.count} users created"

puts "Creating items"
file = File.open(Rails.root.join("app/assets/images/louboutin_heels.jpeg"))
heels = Item.new(name: "Heels", description: "12CM", price: 5000, brand: "Christian Loubutin", category: "Shoes", user: ratna, address: "Canggu, Bali")
heels.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
heels.save!

file = File.open(Rails.root.join("app/assets/images/fendi.webp"))
fendi = Item.new(name: "Mini Sunshine Shopper", description: "Brown leather mini-bag", price: 7000, brand: "Fendi", category: "Bags", user: nina, address: "Denpasar, Bali")
fendi.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
fendi.save!

file = File.open(Rails.root.join("app/assets/images/dress.webp"))
dress = Item.new(name: "Mid Length Dress", description: "White and Black Under The Sea Cotton Poplin", price: 200, brand: "Dior", category: "Clothes", user: ratna, address: "Kerobokan, Bali")
dress.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
dress.save!

file = File.open(Rails.root.join("app/assets/images/scarf.webp"))
scarf = Item.new(name: "Wow twill up scarf", description: "Twill up in silk twill (100% silk).", price: 100, brand: "Hermes", category: "Accesories", user: nina, address: "Tabanan, Bali")
scarf.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
scarf.save!

file = File.open(Rails.root.join("app/assets/images/valentino.webp"))
valentino = Item.new(name: "Rockstud Angkle Strap 100mm pumps", description: "Valentino Garavani Rockstud Ankle Strap pump in calfskin leather", price: 100, brand: "Valentino Garavani", category: "Shoes", user: nina, address: "Nusa Dua, Bali")
valentino.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
valentino.save!

file = File.open(Rails.root.join("app/assets/images/tie.jpeg"))
tie = Item.new(name: "Chain Pinstripe Tie", description: "Classic tie is crafted from pure silk twill in the Chain Pinstripe print", price: 300, brand: "Versace", category: "Accesories", user: jess, address: "Ubud, Bali")
tie.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
tie.save!

file = File.open(Rails.root.join("app/assets/images/ysl.jpeg"))
ysl = Item.new(name: "Kate Chain Wallet", description: "Wallet with flap made with metal-free tanned leather decorated with YSL initials", price: 300, brand: "YSL", category: "Bags", user: jess, address: "Kuta, Bali")
ysl.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
ysl.save!

file = File.open(Rails.root.join("app/assets/images/gucci.png"))
gucci = Item.new(name: "Men's Screener GG sneaker", description: "Vintage sportswear. Influenced by classic trainers from the '70s", price: 300, brand: "Gucci", category: "Shoes", user: nina, address: "Denpasar, Bali")
gucci.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
gucci.save!

file = File.open(Rails.root.join("app/assets/images/dolce.png"))
dolce = Item.new(name: "Short ocelot-print chiffon dress ", description: "The Dolce&Gabbana Spring/Summer collection", price: 200, brand: "Dolce & Gabbana", category: "Clothes", user: ratna, address: "Sanur, Bali")
dolce.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
dolce.save!

file = File.open(Rails.root.join("app/assets/images/celine.webp"))
celine = Item.new(name: "Triomphe 04 Sunglasses in Acetate Black", description: "Temple length 5.3 in lens width 2.2", price: 200, brand: "Celine", category: "Accesories", user: jess, address: "Gianyar, Bali")
celine.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
celine.save!
puts "#{Item.count} items created"

puts 'Finished!'
