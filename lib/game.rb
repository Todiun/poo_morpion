require_relative 'player'
require_relative 'board'
require_relative 'show'

class Game
  def initialize
    puts "Nom du joueur 1 (X) :"
    print "> "
    name1 = gets.chomp
    @player1 = Player.new(name1, "X")

    puts "Nom du joueur 2 (O) :"
    print "> "
    name2 = gets.chomp
    @player2 = Player.new(name2, "O")

    @board = Board.new
    @current_player = @player1
  end

  def play
    while true
      Show.new.show_board(@board)
      turn
      if @board.victory?(@current_player.symbol)
        Show.new.show_board(@board)
        puts "#{@current_player.name} a gagné ! 🎉"
        break
      elsif @board.full?
        Show.new.show_board(@board)
        puts "Match nul 🤝"
        break
      end
      switch_player
    end
  end

  def turn
    puts "#{@current_player.name}, choisis une case (ex: A1, B2...) :"
    print "> "
    choice = gets.chomp
    until @board.play_move(choice, @current_player.symbol)
      puts "Choix invalide ou case déjà prise. Réessaie :"
      print "> "
      choice = gets.chomp
    end
  end

  def switch_player
    @current_player = (@current_player == @player1) ? @player2 : @player1
  end
end
