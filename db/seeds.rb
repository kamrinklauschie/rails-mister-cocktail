# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

p "Beginning the seed..."

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
data_serialized = open(url).read
json = JSON.parse(data_serialized)

p "JSON parsed..."

api_array = json["drinks"]
ingredients_array = api_array.map { |api_hash| api_hash['strIngredient1'] }

p "Destroying all ingredients..."

# Ingredient.destroy_all

p "Creating all ingredients..."

ingredients_array.each do |ingredient|
  Ingredient.create(name: ingredient)
end

p "Seed complete!"
