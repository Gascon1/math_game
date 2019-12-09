# require_relative 'player'
# require_relative 'game'

# class Question 


#   def asks_question(player)
#     attr_reader :sum

#     first_num = generate_num()
#     second_num = generate_num()
#     sum = first_num + second_num
#     puts "#{player.name}: What does #{first_num} plus #{second_num} equal?"
#     sum
#   end

#   def generate_num
#     rand(1..20)
#   end

#   def answer
#     player_answer = gets.chomp
#     if player_answer == (self.sum) # how to access sum from another method
#       puts "YES! You are correct."
#     else
#       puts "Seriously? No!"
#       @hp -= 1
#     end
#   end



# end
