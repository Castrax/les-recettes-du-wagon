# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating recipes...'
Recipe.create!({
  title: "Tacos",
  description: "Un taco est un antojito de la cuisine mexicaine qui se compose d'une tortilla de maïs repliée ou enroulée sur elle-même contenant presque toujours une garniture le plus souvent à base de viande, de sauce, d'oignon et de coriandre fraiche hachée",
  number_persons: 6,
  difficulty: "facile",
  cost: "éco",
  preparation: "Etape 1
A la poêle, faire dorer l'oignon émincé dans un peu d'huile d'olive.
Etape 2
Rajouter la viande, assaisonner et laisser cuire 5 min.
Etape 3
Laver les feuilles de laitue.
Etape 4
Couper les tomates et le poivron en petits dés.
Etape 5
Incorporer le tout à la poêlée avec le coulis de tomate, et poursuivre la cuisson pendant 5 min.
Etape 6
Egoutter les haricots rouges et les ajouter 2 min avant la fin de cuisson.
Etape 7
Hors du feu, ajuster l'assaisonnement et saupoudrer généreusement de cumin; on peut aussi rajouter quelques gouttes de Tabasco.
Etape 8
Garnir les tortillas de préparation et les refermer en les roulant comme des crêpes. Disposer 1 feuille de laitue sur chaque tacos avant de servir.",
  total_time: "00:20",
  season: "été",
  ustensils: "1 poêle, 1 pinceau, 1 couteau"
})
Recipe.create!({
  title: "Guacamole",
  description: "Le guacamole est une préparation culinaire d'origine mexicaine faite à base d’avocat, de piment frais, de coriandre fraîche, d'oignons, de tomates, de jus de lime ou de citron, de sel et de poivre",
  number_persons: 5,
  difficulty: "facile",
  cost: "éco",
  preparation: "Etape 1
Pelez les avocats, puis réduisez-les en purée.
Etape 2
Hachez l'oignon et les piments. Mélangez la purée avec l'oignon et les piments, en ajoutant une pincée de sel.",
  total_time: "00:10",
  season: "été",
  ustensils: "1 saladier"
})
puts 'Finished!'

puts 'Creating ingredients...'
20.times do
  Ingredient.create!({
    name: Faker::Food.ingredient
  })
end
puts 'Finished!'
