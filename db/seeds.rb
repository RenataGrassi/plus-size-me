# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# USER SEEDS

biancaferreira = User.create(email: "biancaferreiralp@gmail.com", password: "123456", first_name: "Bianca",
            last_name: "Ferreira", address: "Jacarepagua")

joaofelipe = User.create(email: "joaofelipemendes@gmail.com", password: "helloworld", first_name: "Joao Felipe",
            last_name: "Mendes", address: "Botafogo")

berenicemahe = User.create(email: "berenice.mahe@gmail.com", password: "bonjour", first_name: "Bérénice",
            last_name: "Mahé", address: "Gloria")


# PRODUCT SEEDS

shirt = Product.create(name: "Basic Shirt", description: "A simple, yet cool shirt.", gender: "feminine",
            brand: "Zara", size: "XL", price: 10, category: "shirts", user_id: User.first.id)

dress = Product.create(name: "Cute Dress", description: "A cute dress to go to the park.", gender: "feminine",
            brand: "H&M", size: "L", price: 30, category: "dresses", user_id: User.third.id)

pants = Product.create(name: "Leather Jacket", description: "This will be your new best friend.", gender: "masculine",
            brand: "Tommy Hilfinger", size: "XXL", price: 80, category: "jackets", user_id: User.second.id)

# ORDERS

orderone = Order.create(status: true, user: biancaferreira)

ordertwo = Order.create(status: true, user: joaofelipe)

orderthree = Order.create(status: true, user: berenicemahe)
