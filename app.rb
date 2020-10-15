require 'bundler'
Bundler.require


require_relative 'lib/app/board.rb'
require_relative 'lib/app/boardcase.rb'
require_relative 'lib/app/game.rb'
require_relative 'lib/app/player.rb'
require_relative 'lib/views/application.rb'
require_relative 'lib/views/show.rb'


#Identification des joueurs
player_1 = Player.new(@name, @symbol)
player_2 = Player.new(@name, @symbol)


puts "Quel est ton prénom"
  player_1 = gets.chomp
  
  
  puts "Bienvenue à toi, #{player_1}"
  sleep(2)
  puts "Quelle est le prénom de ton adversaire"
  player_2 = gets.chomp
  
  puts "Bienvenue à #{player_2} également"
  sleep(2)
  puts "Nos deux joueurs sont donc #{player_1} et #{player_2}"
  sleep(2)
  puts "la partie peut commencer"
  sleep(1)
  puts "Bonne chance!!!"
  sleep(3)
  
  puts "#{player_1} jouera en premier et comme le veut la coutume, il jouera donc le X "
  sleep(2)
  puts
  puts "-----------------------"
  puts "Voici la grille :"
  puts
  puts
  sleep(1)
  tableau = Board.new
  tableau.display_board
  sleep(2)


  #Annonce du joueur 1

  puts "#{player_1} : 'Je joue en A1'"

  #board = BoardCase.new
  #board.boardcase_position







#binding.pry