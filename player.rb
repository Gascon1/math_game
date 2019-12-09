
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

  def generate_num
    rand(1..20)
  end
  
  def asks_question(player)

    first_num = generate_num
    second_num = generate_num
    sum = first_num + second_num
    puts "#{player.name}: What does #{first_num} plus #{second_num} equal?"
    sum
  end


  def answer
    player_answer = gets.chomp
    if player_answer == 6 # how to access sum from another method
      puts "YES! You are correct."
    else
      puts "Seriously? No!"
      @hp -= 1
    end
  end



end




