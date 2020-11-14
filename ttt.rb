class Board
  def draw
    print "    1  |  2 |  3 \n"
    print "a  ____|____|____\n"
    print "b  ____|____|____\n"
    print "c      |    |    \n"
  end
end

class Coordinate
  attr_reader :xy
  def initialize(xy)
    @xy = xy
  end
end

class Player
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

class Game
  def set_players
    print "Insert player 1: "
    name_1 = gets.chomp
    player_1 = Player.new(name_1)
    print "Insert player 2: "
    name_2 = gets.chomp
    player_2 = Player.new(name_2)
  end
  
  def start
    Board.new.draw
  end
end


game1 = Game.new
game1.set_players