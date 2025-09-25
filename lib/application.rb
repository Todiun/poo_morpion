require_relative 'game'

class Application
  def perform
    puts "Bienvenue dans le Morpion !"
    loop do
      game = Game.new
      game.play
      puts "Veux-tu rejouer ? (o/n)"
      print "> "
      answer = gets.chomp.downcase
      break if answer != "o"
    end
    puts "Merci d'avoir joué, à bientôt !"
  end
end
