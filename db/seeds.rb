# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'nokogiri'

# puts 'Creating recipes...'
# Recipe.create!({
#   title: "Tacos",
#   description: "Un taco est un antojito de la cuisine mexicaine qui se compose d'une tortilla de maïs repliée ou enroulée sur elle-même contenant presque toujours une garniture le plus souvent à base de viande, de sauce, d'oignon et de coriandre fraiche hachée",
#   number_persons: 6,
#   difficulty: "facile",
#   cost: "éco",
#   preparation: "Etape 1
# A la poêle, faire dorer l'oignon émincé dans un peu d'huile d'olive.
# Etape 2
# Rajouter la viande, assaisonner et laisser cuire 5 min.
# Etape 3
# Laver les feuilles de laitue.
# Etape 4
# Couper les tomates et le poivron en petits dés.
# Etape 5
# Incorporer le tout à la poêlée avec le coulis de tomate, et poursuivre la cuisson pendant 5 min.
# Etape 6
# Egoutter les haricots rouges et les ajouter 2 min avant la fin de cuisson.
# Etape 7
# Hors du feu, ajuster l'assaisonnement et saupoudrer généreusement de cumin; on peut aussi rajouter quelques gouttes de Tabasco.
# Etape 8
# Garnir les tortillas de préparation et les refermer en les roulant comme des crêpes. Disposer 1 feuille de laitue sur chaque tacos avant de servir.",
#   total_time: "00:20",
#   season: "été",
#   ustensils: "1 poêle, 1 pinceau, 1 couteau"
# })
# Recipe.create!({
#   title: "Guacamole",
#   description: "Le guacamole est une préparation culinaire d'origine mexicaine faite à base d’avocat, de piment frais, de coriandre fraîche, d'oignons, de tomates, de jus de lime ou de citron, de sel et de poivre",
#   number_persons: 5,
#   difficulty: "facile",
#   cost: "éco",
#   preparation: "Etape 1
# Pelez les avocats, puis réduisez-les en purée.
# Etape 2
# Hachez l'oignon et les piments. Mélangez la purée avec l'oignon et les piments, en ajoutant une pincée de sel.",
#   total_time: "00:10",
#   season: "été",
#   ustensils: "1 saladier
# })
# puts 'Finished!'

puts "Creating ingredients for a page 1..."
  url = "https://www.marmiton.org/recettes/index/ingredient"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished a page 1!"

puts "Creating ingredients for a page 2..."
  url = "https://www.marmiton.org/recettes/index/ingredient/2"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished a page 2!"

puts "Creating ingredients for a page 3..."
  url = "https://www.marmiton.org/recettes/index/ingredient/3"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished a page 3!"

puts "Creating ingredients for a page 4..."
  url = "https://www.marmiton.org/recettes/index/ingredient/4"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished a page 4!"

puts "Creating ingredients for b page 1..."
  url = "https://www.marmiton.org/recettes/index/ingredient/b/1/"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished b page 1!"

puts "Creating ingredients for b page 2..."
  url = "https://www.marmiton.org/recettes/index/ingredient/b/2"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished b page 2!"

puts "Creating ingredients for b page 3..."
  url = "https://www.marmiton.org/recettes/index/ingredient/b/3"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished b page 3!"

puts "Creating ingredients for b page 4..."
  url = "https://www.marmiton.org/recettes/index/ingredient/b/4"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished b page 4!"

puts "Creating ingredients for b page 5..."
  url = "https://www.marmiton.org/recettes/index/ingredient/b/5"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished b page 5!"

puts "Creating ingredients for b page 6..."
  url = "https://www.marmiton.org/recettes/index/ingredient/b/6"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished b page 6!"

puts "Creating ingredients for c page 1..."
  url = "https://www.marmiton.org/recettes/index/ingredient/c/1"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished c page 1!"

puts "Creating ingredients for c page 2..."
  url = "https://www.marmiton.org/recettes/index/ingredient/c/2"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished c page 2!"

puts "Creating ingredients for c page 3..."
  url = "https://www.marmiton.org/recettes/index/ingredient/c/3"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished c page 3!"

puts "Creating ingredients for c page 4..."
  url = "https://www.marmiton.org/recettes/index/ingredient/c/4"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished c page 4!"

puts "Creating ingredients for c page 5..."
  url = "https://www.marmiton.org/recettes/index/ingredient/c/5"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished c page 5!"

puts "Creating ingredients for c page 6..."
  url = "https://www.marmiton.org/recettes/index/ingredient/c/6"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished c page 6!"

puts "Creating ingredients for c page 7..."
  url = "https://www.marmiton.org/recettes/index/ingredient/c/7"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished c page 7!"

puts "Creating ingredients for c page 8..."
  url = "https://www.marmiton.org/recettes/index/ingredient/c/8"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished c page 8!"

puts "Creating ingredients for c page 9..."
  url = "https://www.marmiton.org/recettes/index/ingredient/c/9"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished c page 9!"

puts "Creating ingredients for c page 10..."
  url = "https://www.marmiton.org/recettes/index/ingredient/c/10"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished c page 10!"

puts "Creating ingredients for c page 11..."
  url = "https://www.marmiton.org/recettes/index/ingredient/c/11"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished c page 11!"

puts "Creating ingredients for c page 12..."
  url = "https://www.marmiton.org/recettes/index/ingredient/c/12"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished c page 12!"

puts "Creating ingredients for d page 1..."
  url = "https://www.marmiton.org/recettes/index/ingredient/d/"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished d page 1!"

puts "Creating ingredients for e page 1..."
  url = "https://www.marmiton.org/recettes/index/ingredient/e/"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished e page 1!"

puts "Creating ingredients for e page 2..."
  url = "https://www.marmiton.org/recettes/index/ingredient/e/2"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished e page 2!"

puts "Creating ingredients for e page 3..."
  url = "https://www.marmiton.org/recettes/index/ingredient/e/3"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished e page 3!"

puts "Creating ingredients for f page 1..."
  url = "https://www.marmiton.org/recettes/index/ingredient/f/"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished f page 1!"


puts "Creating ingredients for f page 2..."
  url = "https://www.marmiton.org/recettes/index/ingredient/f/2"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished f page 2!"


puts "Creating ingredients for f page 3..."
  url = "https://www.marmiton.org/recettes/index/ingredient/f/3"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished f page 3!"


puts "Creating ingredients for f page 4..."
  url = "https://www.marmiton.org/recettes/index/ingredient/f/4"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished f page 4!"


puts "Creating ingredients for f page 5..."
  url = "https://www.marmiton.org/recettes/index/ingredient/f/5"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished f page 5!"

puts "Creating ingredients for g page 1..."
  url = "https://www.marmiton.org/recettes/index/ingredient/g"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished g page 1!"

puts "Creating ingredients for g page 2..."
  url = "https://www.marmiton.org/recettes/index/ingredient/g/2"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished g page 2!"

puts "Creating ingredients for g page 3..."
  url = "https://www.marmiton.org/recettes/index/ingredient/g/3"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished g page 3!"

puts "Creating ingredients for g page 4..."
  url = "https://www.marmiton.org/recettes/index/ingredient/g/4"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished g page 4!"

puts "Creating ingredients for g page 5..."
  url = "https://www.marmiton.org/recettes/index/ingredient/g/5"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished g page 5!"

puts "Creating ingredients for h page 1..."
  url = "https://www.marmiton.org/recettes/index/ingredient/h"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished h page 1!"

puts "Creating ingredients for h page 2..."
  url = "https://www.marmiton.org/recettes/index/ingredient/h/2"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished h page 2!"

puts "Creating ingredients for i page 1..."
  url = "https://www.marmiton.org/recettes/index/ingredient/i"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished i page 1!"

puts "Creating ingredients for j page 1..."
  url = "https://www.marmiton.org/recettes/index/ingredient/j"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished j page 1!"

puts "Creating ingredients for j page 2..."
  url = "https://www.marmiton.org/recettes/index/ingredient/j/2"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished j page 2!"

puts "Creating ingredients for k page 1..."
  url = "https://www.marmiton.org/recettes/index/ingredient/k"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished k page 1!"

puts "Creating ingredients for l page 1..."
  url = "https://www.marmiton.org/recettes/index/ingredient/l/1"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished l page 1!"

puts "Creating ingredients for l page 2..."
  url = "https://www.marmiton.org/recettes/index/ingredient/l/2"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished l page 2!"

puts "Creating ingredients for l page 3..."
  url = "https://www.marmiton.org/recettes/index/ingredient/l/3"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished l page 3!"

puts "Creating ingredients for m page 1..."
  url = "https://www.marmiton.org/recettes/index/ingredient/m/1"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished m page 1!"

puts "Creating ingredients for m page 2..."
  url = "https://www.marmiton.org/recettes/index/ingredient/m/2"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished m page 2!"

puts "Creating ingredients for m page 3..."
  url = "https://www.marmiton.org/recettes/index/ingredient/m/3"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished m page 3!"

puts "Creating ingredients for m page 4..."
  url = "https://www.marmiton.org/recettes/index/ingredient/m/4"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished m page 4!"

puts "Creating ingredients for m page 5..."
  url = "https://www.marmiton.org/recettes/index/ingredient/m/5"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished m page 5!"

puts "Creating ingredients for m page 6..."
  url = "https://www.marmiton.org/recettes/index/ingredient/m/6"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished m page 6!"

puts "Creating ingredients for n page 1..."
  url = "https://www.marmiton.org/recettes/index/ingredient/n/"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished n page 1!"

puts "Creating ingredients for n page 2..."
  url = "https://www.marmiton.org/recettes/index/ingredient/n/2"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished n page 2!"

puts "Creating ingredients for o page 1..."
  url = "https://www.marmiton.org/recettes/index/ingredient/o"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished o page 1!"

puts "Creating ingredients for o page 2..."
  url = "https://www.marmiton.org/recettes/index/ingredient/o/2"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished o page 2!"

puts "Creating ingredients for p page 1..."
  url = "https://www.marmiton.org/recettes/index/ingredient/p"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished p page 1!"

puts "Creating ingredients for p page 2..."
  url = "https://www.marmiton.org/recettes/index/ingredient/p/2"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished p page 2!"

puts "Creating ingredients for p page 3..."
  url = "https://www.marmiton.org/recettes/index/ingredient/p/3"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished p page 3!"

puts "Creating ingredients for p page 4..."
  url = "https://www.marmiton.org/recettes/index/ingredient/p/4"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished p page 4!"

puts "Creating ingredients for p page 5..."
  url = "https://www.marmiton.org/recettes/index/ingredient/p/5"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished p page 5!"

puts "Creating ingredients for p page 6..."
  url = "https://www.marmiton.org/recettes/index/ingredient/p/6"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished p page 6!"

puts "Creating ingredients for p page 7..."
  url = "https://www.marmiton.org/recettes/index/ingredient/p/7"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished p page 7!"

puts "Creating ingredients for p page 8..."
  url = "https://www.marmiton.org/recettes/index/ingredient/p/8"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished p page 8!"

puts "Creating ingredients for p page 9..."
  url = "https://www.marmiton.org/recettes/index/ingredient/p/9"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished p page 9!"

puts "Creating ingredients for p page 10..."
  url = "https://www.marmiton.org/recettes/index/ingredient/p/10"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished p page 10!"

puts "Creating ingredients for q page 1..."
  url = "https://www.marmiton.org/recettes/index/ingredient/q/"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished q page 1!"

puts "Creating ingredients for r page 1..."
  url = "https://www.marmiton.org/recettes/index/ingredient/r/"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished r page 1!"

puts "Creating ingredients for r page 2..."
  url = "https://www.marmiton.org/recettes/index/ingredient/r/2"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished r page 2!"

puts "Creating ingredients for r page 3..."
  url = "https://www.marmiton.org/recettes/index/ingredient/r/3"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished r page 3!"

puts "Creating ingredients for s page 1..."
  url = "https://www.marmiton.org/recettes/index/ingredient/s/1"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished s page 1!"

puts "Creating ingredients for s page 2..."
  url = "https://www.marmiton.org/recettes/index/ingredient/s/2"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished s page 2!"

puts "Creating ingredients for s page 3..."
  url = "https://www.marmiton.org/recettes/index/ingredient/s/3"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished s page 3!"

puts "Creating ingredients for s page 4..."
  url = "https://www.marmiton.org/recettes/index/ingredient/s/4"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished s page 4!"

puts "Creating ingredients for s page 5..."
  url = "https://www.marmiton.org/recettes/index/ingredient/s/5"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished s page 5!"

puts "Creating ingredients for s page 6..."
  url = "https://www.marmiton.org/recettes/index/ingredient/s/6"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished s page 6!"

puts "Creating ingredients for s page 7..."
  url = "https://www.marmiton.org/recettes/index/ingredient/s/7"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished s page 7!"

puts "Creating ingredients for s page 8..."
  url = "https://www.marmiton.org/recettes/index/ingredient/s/8"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished s page 8!"

puts "Creating ingredients for t page 1..."
  url = "https://www.marmiton.org/recettes/index/ingredient/t"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished t page 1!"

puts "Creating ingredients for t page 2..."
  url = "https://www.marmiton.org/recettes/index/ingredient/t/2"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished t page 2!"

puts "Creating ingredients for t page 3..."
  url = "https://www.marmiton.org/recettes/index/ingredient/t/3"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished t page 3!"

puts "Creating ingredients for v page 1..."
  url = "https://www.marmiton.org/recettes/index/ingredient/v"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished v page 1!"

puts "Creating ingredients for v page 2..."
  url = "https://www.marmiton.org/recettes/index/ingredient/v/2"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished v page 2!"


puts "Creating ingredients for w page 1..."
  url = "https://www.marmiton.org/recettes/index/ingredient/w"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished w page 1!"

puts "Creating ingredients for x page 1..."
  url = "https://www.marmiton.org/recettes/index/ingredient/x"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished x page 1!"

puts "Creating ingredients for y page 1..."
  url = "https://www.marmiton.org/recettes/index/ingredient/y"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished y page 1!"

puts "Creating ingredients for z page 1..."
  url = "https://www.marmiton.org/recettes/index/ingredient/z"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  html_doc.search('.index-item-card-name').each do |element|
    name = element.text.strip
    ingredient = Ingredient.new(name: name)
    ingredient.save!
  end
puts "Finished z page 1!"

