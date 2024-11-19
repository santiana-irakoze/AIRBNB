# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require "open-uri"

Booking.destroy_all
Game.destroy_all
User.destroy_all

user1 = User.create!(email: "santiana@santiana.fr", password: "santiana123", first_name:"Santiana" , last_name: "Santiano")
user2 = User.create!(email: "odile@odile.fr", password: "odile123", first_name: "Odile", last_name: "Odilon")
user3 = User.create!(email: "baudouin@baudouin.fr", password: "baudouin123", first_name: "Baudouin", last_name: "Baudon")
user4 = User.create!(email: "gloire@gloire.fr", password: "gloire123", first_name: "Gloire", last_name: "Victoire")

game1 = Game.create!(name: "Patchwork", description: "Un super jeu !", location: "Paris", price: 5, category: "Family", user: user1, min_number_of_players: 2, max_number_of_players: 2, playing_time: 30)
file1 = URI.parse("https://cf.geekdo-images.com/wLW7pFn0--20lEizEz5p3A__original/img/B1j7R-slq8wxgC71Sg1F7S1s7Kg=/0x0/filters:format(jpeg)/pic2270442.jpg").open
game1.photos.attach(io: file1, filename: "#{game1.name}-photo.jpg", content_type: "image/jpg")
game1.save!
puts "Game #{game1.name} created"
game2 = Game.create!(name: "Robinson Crusoe: Adventures on the Cursed Island", description: "Jeu d'aventure génial où tu dois sortir d'une ile déserte.", location: "Paris", price: 8, category: "Adventure", user: user1, min_number_of_players: 1, max_number_of_players: 2, playing_time: 120)
file2 = URI.parse("https://cf.geekdo-images.com/FbFnaTx3aT5dM18K_bR_Pg__original/img/TB2dGHOnuUr54jQYIJZDIMilOJE=/0x0/filters:format(jpeg)/pic3165731.jpg").open
game2.photos.attach(io: file2, filename: "#{game2.name}-photo.jpg", content_type: "image/jpg")
game2.save!
puts "Game #{game2.name} created"
game3 = Game.create!(name: "Roll for the Galaxy", description: "Jeu incroyable si vous aimez les univers fantastiques.", location: "Montrouge", price: 5, category: "Friends", user: user1, min_number_of_players: 2, max_number_of_players: 5, playing_time: 45)
file3 = URI.parse("https://cf.geekdo-images.com/nhoyoLpYPC2b3UiJ5kJ0yg__original/img/LoETJCbq1HpSlhPLdci3qJekpwA=/0x0/filters:format(jpeg)/pic1473629.jpg").open
game3.photos.attach(io: file3, filename: "#{game3.name}-photo.jpg", content_type: "image/jpg")
game3.save!
puts "Game #{game3.name} created"
game4 = Game.create!(name: "Doctor Who: The Card Game", description: "Pour tous les fans de Dr Who", location: "Antony", price: 12, category: "Card games", user: user2, min_number_of_players: 2, max_number_of_players: 4, playing_time: 60)
file4 = URI.parse("https://cf.geekdo-images.com/abNcykgcvAIvyZpmZY9Lew__original/img/gt-hLDZIqUhCNJDfVyBqbcHb7m0=/0x0/filters:format(jpeg)/pic1327331.jpg").open
game4.photos.attach(io: file4, filename: "#{game4.name}-photo.jpg", content_type: "image/jpg")
game4.save!
puts "Game #{game4.name} created"
game5 = Game.create!(name: "DungeonQuest", description: "Jeu d'exploration où tu es le héro de l'histoire.", location: "Brétigny", price: 3, category: "Friends", user: user2, min_number_of_players: 1, max_number_of_players: 4, playing_time: 60)
file5 = URI.parse("https://cf.geekdo-images.com/fp_QRuZe9hfPY_k7Ff3jIQ__original/img/SJdA5IPcgMtVSOt5XiZOYhgNTNE=/0x0/filters:format(jpeg)/pic2017396.jpg").open
game5.photos.attach(io: file5, filename: "#{game5.name}-photo.jpg", content_type: "image/jpg")
game5.save!
puts "Game #{game5.name} created"
game6 = Game.create!(name: "Elder Sign", description: "Jeu d'énigmes et de stratégie", location: "Juvisy", price: 11, category: "Adventure", user: user2, min_number_of_players: 1, max_number_of_players: 8, playing_time: 90)
file6 = URI.parse("https://cf.geekdo-images.com/wNCSCl961fMzDUhwetfjTg__original/img/H-iLs6JcceMk96bYON5c9PFUag8=/0x0/filters:format(jpeg)/pic1236119.jpg").open
game6.photos.attach(io: file6, filename: "#{game6.name}-photo.jpg", content_type: "image/jpg")
game6.save!
puts "Game #{game6.name} created"
game7 = Game.create!(name: "Skyjo", description: "Dans ce jeu de cartes simple et rapide, l'objectif est d'obtenir le plus petit score à la fin de la partie qui se joue en plusieurs manches.", location: "Aubervilliers", price: 7, category: "Card games", user: user3, min_number_of_players: 2, max_number_of_players: 8, playing_time: 30)
file7 = URI.parse("https://m.media-amazon.com/images/I/81Pfuow1T8L._AC_SY879_.jpg").open
game7.photos.attach(io: file7, filename: "#{game7.name}-photo.jpg", content_type: "image/jpg")
game7.save!
puts "Game #{game7.name} created"
game8 = Game.create!(name: "Codenames", description: "Codenames propose une expérience ludique unique où les joueurs doivent faire deviner des mots à leurs coéquipiers en ne donnant qu'un seul indice par tour.", location: "Saint-Ouen", price: 8, category: "Friends", user: user3, min_number_of_players: 2, max_number_of_players: 8, playing_time: 60)
file8 = URI.parse("https://cdn.cultura.com/cdn-cgi/image/width=1280/media/pim/42_245081_1_10_FR.jpg").open
game8.photos.attach(io: file8, filename: "#{game8.name}-photo.jpg", content_type: "image/jpg")
game8.save!
puts "Game #{game8.name} created"
game9 = Game.create!(name: "Cluedo Conspiration", description: "Dans ce jeu de supercherie et de déduction, les joueurs incarnent des personnages de Cluedo et jouent des rôles secrets dans des équipes adverses.", location: "Paris", price: 10, category: "Strategy", user: user3, min_number_of_players: 4, max_number_of_players: 10, playing_time: 45)
file9 = URI.parse("https://www.pixiegames.fr/5676-large_default/cluedo-conspiration.jpg").open
game9.photos.attach(io: file9, filename: "#{game9.name}-photo.jpg", content_type: "image/jpg")
game9.save!
puts "Game #{game9.name} created"
game10 = Game.create!(name: "L'Escape Game - Les Enfants de la Résistance", description: " Ce livre-jeu d’un genre nouveau, et très populaire, mobilise autant les méninges que l’adresse au fil d’une expérience interactive et palpitante conçue avec les auteurs de la série phare.", location: "Montrouge", price: 4, category: "Adventure", user: user4, min_number_of_players: 1, max_number_of_players: 5, playing_time: 180)
file10 = URI.parse("https://m.media-amazon.com/images/I/910JmtbDKSL._SL1500_.jpg").open
game10.photos.attach(io: file10, filename: "#{game10.name}-photo.jpg", content_type: "image/jpg")
game10.save!
puts "Game #{game10.name} created"
game11 = Game.create!(name: "Tarot de Marseille", description: "Cette version revisite le jeu traditionnel en redessinant les arcanes et avec des couleurs et des détails retravaillés pour s'harmoniser avec une esthétique modernisée.", location: "Versailles", price: 4, category: "Strategy", user: user4, min_number_of_players: 3, max_number_of_players: 5, playing_time: 15)
file11 = URI.parse("https://www.lamaisondes2fees.fr/7079-large_default/tarot-de-marseille-jodorowsky-camoin.jpg").open
game11.photos.attach(io: file11, filename: "#{game11.name}-photo.jpg", content_type: "image/jpg")
game11.save!
puts "Game #{game11.name} created"
game12 = Game.create!(name: "Disparition aux Caraïbes (Dossiers Criminels)", description: "Vous allez résoudre une énigme à partir de multiples documents réalistes.", location: "Aubervilliers", price: 10, category: "Strategy", user: user4, min_number_of_players: 1, max_number_of_players: 6, playing_time: 100)
file12 = URI.parse("https://www.espritjeu.com/upload/image/disparition-aux-caraibes--dossiers-criminels--p-image-88744-grande.jpg").open
game12.photos.attach(io: file12, filename: "#{game12.name}-photo.jpg", content_type: "image/jpg")
game12.save!
puts "Game #{game12.name} created"




