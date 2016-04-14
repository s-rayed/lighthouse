require 'pry'


numb_1 = rand(1..20)
numb_2 = rand(1..20)
numb_3 = rand(1..20)
numb_4 = rand(1..20)

@lives_1 = 3
@lives_2 = 3



def player_1
  @lives_1
end

def player_2
  @lives_2
end  

def gen_question
  num_1 = rand(1..20)
  num_2 = rand(1..20)
  @answer = num_1 + num_2
  puts "What is the sum of #{numb_1} and #{numb_2}"
end

while (@lives_1 || @lives_2) > 0 

 puts "Player 1: What is the sum of #{numb_1} and #{numb_2}?" 
 answer_1 = numb_1 + numb_2
 input_1 = gets.chomp.to_i

 if answer_1 == input_1 
  puts "Good job"
 else
  @lives_1 -= 1
  puts "You have #{@lives_1} lives remaining"
 end

puts "Player 2: What is the sum of #{numb_3} and #{numb_4}?"
answer_2 = numb_3 + numb_4
input_2 = gets.chomp.to_i

  if answer_2 == input_2
    puts "Good job"
  else
    @lives_2 -= 1
    puts "You have #{@lives_2} lives remaining"
  end
end

puts "Game over, congratulations winner!"




