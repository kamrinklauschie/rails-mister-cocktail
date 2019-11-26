require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
data_serialized = open(url).read
json = JSON.parse(data_serialized)

api_array = json["drinks"]
ingredients_array = api_array.map { |api_hash| api_hash['strIngredient1'] }

Ingredient.destroy_all

ingredients_array.each do |ingredient|
  Ingredient.create(name: ingredient)
end
