class Show
  def show_board(board)
    system "clear" or system "cls"
    puts "    1   2   3"
    puts "A   #{board.cases["A1"].value} | #{board.cases["A2"].value} | #{board.cases["A3"].value}"
    puts "   ---+---+---"
    puts "B   #{board.cases["B1"].value} | #{board.cases["B2"].value} | #{board.cases["B3"].value}"
    puts "   ---+---+---"
    puts "C   #{board.cases["C1"].value} | #{board.cases["C2"].value} | #{board.cases["C3"].value}"
    puts
  end
end
