class BoardCase
  attr_accessor :value
  attr_reader :position

  def initialize(position)
    @position = position
    @value = " "   # Vide au départ
  end
end
