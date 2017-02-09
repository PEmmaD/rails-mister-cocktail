# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")


require 'json'
require 'open-uri'

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
raw_ingredients = open(url).read
hash_ingredients = JSON.parse(raw_ingredients)

drinks = hash_ingredients["drinks"]
drinks.each do |drink|
  name = drink["strIngredient1"]
  i = Ingredient.create!(name: name)
  puts "Successfully created #{i.name}!"
end


