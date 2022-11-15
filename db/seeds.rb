# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
escalette = {name: "L'Escalette", address: "6 Rue de la Boétie, 33000 Bordeaux", category: "french"}
carioca = {name: "Carioca", address: "30 Rue du Dr Charles Nancel Penard, 33000 Bordeaux", category: "italian"}
table = {name: "La Table de l'Epicier", address: "4 Rue Castelnau d'Auros, 33000 Bordeaux", category: "belgian"}
xieng = {name: "Xieng-Maï", address: "5, boulevard du Président Wilson, 33200 Bordeaux", category: "chinese"}
yumi = {name: "Yumi", address: "76 Quai des Chartrons, 33000 Bordeaux", category: "japanese"}

[escalette, carioca, table, xieng, yumi].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Creating #{restaurant.name}"
end

puts "Finished!"
