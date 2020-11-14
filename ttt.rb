class Board
  attr_accessor :coordinates

  def initialize(coordinates = {})
    coordinates["a1"] = " "
    coordinates["a2"] = " "
    coordinates["a3"] = " "
    coordinates["b1"] = " "
    coordinates["b2"] = " "
    coordinates["b3"] = " "
    coordinates["c1"] = " "
    coordinates["c2"] = " "
    coordinates["c3"] = " "
    @coordinates = coordinates
  end

  def draw
    print "    1     2    3 \n"
    print " \n"
    print "a    #{coordinates["a1"]} |  #{coordinates["a2"]} |  #{coordinates["a3"]}  \n"
    print "   ____|____|____\n"
    print "b    #{coordinates["b1"]} |  #{coordinates["b2"]} |  #{coordinates["b3"]}  \n"
    print "   ____|____|____\n"
    print "c    #{coordinates["c1"]} |  #{coordinates["c2"]} |  #{coordinates["c3"]}  \n"
    print "       |    |    \n"
  end
end

class Coordinate
  attr_reader :xy
  def initialize(xy)
    @xy = xy
  end
end

class Player
  attr_accessor :name, :coordinate
  def initialize(name)
    @name = name
  end

  def get_mark
    print "Type a coordinate: "
    @coordinate = gets.chomp
  end
end

class Game
  def initialize(game_coordinates = [])
    @game_coordinates = game_coordinates
  end

  def set_player
    print "Insert player: "
    @name = gets.chomp
    @player = Player.new(@name)
  end

  def start
    @board = Board.new
    @board.draw
  end

  def play_next(mark)
    @player.get_mark
    @game_coordinates << @player.coordinate
    @board.coordinates[@player.coordinate] = mark
    puts `clear`
    @board.draw
  end
end

game1 = Game.new

# Set name of players
game1.set_player 

game1.start

# Loop until finding a winner
game1.play_next("X")