Player 1: What does 5 plus 3 equal?
> 9
Player 1: Seriously? No!
P1: 2/3 vs P2: 3/3
----- NEW TURN -----
Player 2: What does 2 plus 6 equal?
> 8
Player 2: YES! You are correct.
P1: 2/3 vs P2: 3/3
----- NEW TURN -----
... some time later ...
Player 1 wins with a score of 1/3
----- GAME OVER -----
Good bye!

# this will be the class to define every player playing the game 
class Player(name)
  attr_reader :name
  attr_accessor :hp

  def initialize(name)
    @name = name
    @hp = 3
  end 

  def dead?
    @hp <= 0
  end

end

# this will be the class taking care of switching turns 
class Turns
end

# this will be the class in charge of player scores
class Score
end

# this will be the class in charge of the math questions
class Questions
end

class Game 
  def initialize 
    @player1 = Player.new("The GLOAT")
    @player2 = PLayer.new("Surgy Girl")
    @players = [@player1, @player2]
    @round = 1
  end
end

def next_round
    @round += 1 
    @players.rotate!
  end