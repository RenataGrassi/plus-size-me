# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
OpenURI::Buffer.send :remove_const, 'StringMax' if OpenURI::Buffer.const_defined?('StringMax')
OpenURI::Buffer.const_set 'StringMax', 0

# USER SEEDS

biancaferreira = User.create(email: "biancaferreiralp@gmail.com", password: "123456", first_name: "Bianca",
             last_name: "Ferreira", address: "Jacarepagua", admin: true)

joaofelipe = User.create(email: "joaofelipemendes@gmail.com", password: "helloworld", first_name: "Joao Felipe",
             last_name: "Mendes", address: "Botafogo")

berenicemahe = User.create(email: "berenice.mahe@gmail.com", password: "bonjour", first_name: "Bérénice",
             last_name: "Mahé", address: "Gloria")


# PRODUCT SEEDS

shirt = Product.create(name: "Basic Shirt", description: "A simple, yet cool shirt.", gender: "feminine",
                      brand: "Zara", size: "XL", price: 10, category: "shirts", user_id: User.first.id)
url = 'https://images.unsplash.com/photo-1494228766058-1430438d10fc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1052&q=80'
filename = File.basename(URI.parse(url).path)
file = URI.open(url)
shirt.photo.attach(io: file, filename: filename)
shirt.save!

dress = Product.create(name: "Cute Dress", description: "A cute dress to go to the park.", gender: "feminine",
                       brand: "H&M", size: "L", price: 30, category: "dresses", user_id: User.third.id)
url = 'https://images.unsplash.com/photo-1542295669297-4d352b042bca?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'
filename = File.basename(URI.parse(url).path)
file = URI.open(url)
dress.photo.attach(io: file, filename: filename)
dress.save!

manshirt = Product.create(name: "Long sleeves shirt", description: "Easy for work and more casual", gender: "masculine",
                       brand: "H&M", size: "L", price: 30, category: "shirts", user_id: User.third.id)
url = 'https://images.unsplash.com/photo-1573879541250-58ae8b322b40?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'
filename = File.basename(URI.parse(url).path)
file = URI.open(url)
manshirt.photo.attach(io: file, filename: filename)
manshirt.save!

pants = Product.create(name: "Jeans acide", description: "This will be your new best friend.", gender: "masculine",
                       brand: "Tommy Hilfinger", size: "XXL", price: 80, category: "pants", user_id: User.second.id)
url = 'https://images.unsplash.com/photo-1580420876816-ac9e4c3e1406?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'
filename = File.basename(URI.parse(url).path)
file = URI.open(url)
pants.photo.attach(io: file, filename: filename)
pants.save!

skirt = Product.create(name: "Long skirt", description: "Beautiful skirt", gender: "feminine", brand: "Zara",
                          size: "XXXL", price: 200, category: "skirts", user_id: User.second.id)
url = 'https://images.unsplash.com/photo-1573878591960-37c788c55728?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'
filename = File.basename(URI.parse(url).path)
file = URI.open(url)
skirt.photo.attach(io: file, filename: filename)
skirt.save!

swimwear = Product.create(name: "Swimwear navy blue", description: "A simple, yet cool swimwear.", gender: "feminine",
                      brand: "Zara", size: "XL", price: 10, category: "shirts", user_id: User.first.id)
url = 'https://images.unsplash.com/photo-1567967787836-9e80a000ca7c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'
filename = File.basename(URI.parse(url).path)
file = URI.open(url)
swimwear.photo.attach(io: file, filename: filename)
swimwear.save!

flowerdress = Product.create(name: "Flower dress", description: "A beautiful dress, full of flower.", gender: "feminine",
                      brand: "Zara", size: "XL", price: 10, category: "shirts", user_id: User.first.id)
url = 'https://images.unsplash.com/photo-1573733423555-de4061740c05?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80'
filename = File.basename(URI.parse(url).path)
file = URI.open(url)
flowerdress.photo.attach(io: file, filename: filename)
flowerdress.save!

blackdress = Product.create(name: "Simple, long, black dress", description: "A beautiful dress, simple but elegant.", gender: "feminine",
                      brand: "Zara", size: "XL", price: 10, category: "dresses", user_id: User.first.id)
url = 'https://images.unsplash.com/photo-1579973128787-b84290eec884?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1047&q=80'
filename = File.basename(URI.parse(url).path)
file = URI.open(url)
blackdress.photo.attach(io: file, filename: filename)
blackdress.save!

# ORDERS

# orderone = Order.create(status: true, user: biancaferreira)

# ordertwo = Order.create(status: true, user: joaofelipe)

# orderthree = Order.create(status: true, user: berenicemahe)
