# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Menu.create! title: "A menu", description: "of yummy stuff"
Menu.create! title: "Another menu", description: "of not so yummy stuff"
Recipe.create! title: "Waffles", description: "Not bad"
recipe = Recipe.create! title: "Pancakes", description: "Super delish"
recipe.ingredients.create! description: "Salt"
recipe.ingredients.create! description: "More salt"

Category.create! name: "Breakfast"
Category.create! name: "Lunch"
Category.create! name: "Dinner"
