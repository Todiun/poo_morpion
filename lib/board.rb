require_relative 'board_case'

class Board
  attr_reader :cases

  def initialize
    @cases = {}
    ["A", "B", "C"].each do |row|
      (1..3).each do |col|
        pos = "#{row}#{col}"
        @cases[pos] = BoardCase.new(pos)
      end
    end
  end

  def play_move(position, symbol)
    if @cases[position] && @cases[position].value == " "
      @cases[position].value = symbol
      true
    else
      false
    end
  end
    #condition de victoire
  def victory?(symbol)
    winning_combos = [
      ["A1", "A2", "A3"],
      ["B1", "B2", "B3"],
      ["C1", "C2", "C3"],
      ["A1", "B1", "C1"],
      ["A2", "B2", "C2"],
      ["A3", "B3", "C3"],
      ["A1", "B2", "C3"],
      ["A3", "B2", "C1"]
    ]
    winning_combos.any? do |combo|
      combo.all? { |pos| @cases[pos].value == symbol }
    end
  end

  def full?
    @cases.values.all? { |c| c.value != " " }
  end
end
