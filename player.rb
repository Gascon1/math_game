
# this will be the class to define every player playing the game 
class Player
  attr_reader :name
  attr_accessor :hp

  def initialize(name)
    @name = name
    @hp = 3
  end 

  def dead?
    @hp <= 0
  end

  def generate_num
    rand(1..20)
  end
  
  def asks_question(player)

    first_num = generate_num
    second_num = generate_num
    sum = first_num + second_num
    puts "#{player.name}: What does #{first_num} plus #{second_num} equal?"
    print ">> "
    answer(sum, player)
  end


  def answer(sum, player)
    player_answer = gets.chomp
    
    if player_answer.to_i == sum # how to access sum from another method
      puts "#{player.name}: Good work, you got it."
    else
      puts "#{player.name}: Hmmm? Can you even read?"
      @hp -= 1
    end
  end



end




