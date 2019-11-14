# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Ingredient.destroy_all
Dose.destroy_all
Cocktail.destroy_all

# puts 'Creating 1 Cocktail...'
# Cocktail.create(name: "White Russian", photo: "https://res.cloudinary.com/ddowsww0o/image/upload/v1565967351/tpoiwlemhftemplobua4.jpg")


puts 'Finished!'
