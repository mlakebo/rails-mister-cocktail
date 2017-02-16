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


require 'nokogiri'
require 'open-uri'

# Get page
page = Nokogiri::HTML(open("http://www.1001cocktails.com/cocktails/recettes-popularite-0.html"))


page.search(".importantgrisfin").take(100).each do |ingredient|
  ingredient_name = ingredient.text.strip
  Ingredient.create(name: ingredient_name)
end
