# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'JSON'
require 'open-uri'

puts "Clearing database"
Dose.destroy_all
Ingredient.destroy_all

puts "Creating ingredients"
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
buffer = open(url).read
result = JSON.parse(buffer)


result.each do |ingredient|
  ingredient[1].each do |i|
    ingredients = Ingredient.create!(name: "#{i.values.join('')}")
    p ingredients
  end
  # Ingredient.create!(name: "#{ingredient['strIngredient1']}")
end

# Ingredient.create!(name: "lemon")
# Ingredient.create!(name: "crushed ice")
# Ingredient.create!(name: "mint leaves")
# Ingredient.create!(name: "vodka")
# Ingredient.create!(name: "white rum")
# Ingredient.create!(name: "sugar syrup")
