require 'open-uri'
require 'json'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
file = open(url).read
document = JSON.parse(file)
puts 'Opening the database and creating ingredients...'

list = document['drinks'].sort
list.each do |element|
  Ingredient.create(name: element['strIngredient1'])
end
puts 'Finished!'
