class Board
  def draw
    print "    1  |  2 |  3 \n"
    print "a  ____|____|____\n"
    print "b  ____|____|____\n"
    print "c      |    |    \n"
  end
end

class Game
  def start
    Board.new.draw
  end
end



game1 = Game.new.start