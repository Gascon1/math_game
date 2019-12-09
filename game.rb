require_relative 'player'

class Game 
  def initialize 
    @player1 = Player.new("The GLOAT")
    @player2 = PLayer.new("Surgy Girl")
    @players = [@player1, @player2]
    @round = 1
  end
  
  def next_round
    @round += 1 
    @players.rotate!
  end
  
  def game_over?
    alive_players.length == 1
  end
  
  def alive_players
    @players.select{|player| !player.dead?}
  end

  def game_status
    puts "P1: #{@player1.hp} vs P2 #{@player2.hp}"
    puts "----- NEW TURN -----"
    puts
  end



  def run 

    until game_over? do
      current_player = @players.first
      opponent_player = @players.last
      
      game_status
      
      asks_question(current_player)
      opponent_player.answer

    end
  end
end
