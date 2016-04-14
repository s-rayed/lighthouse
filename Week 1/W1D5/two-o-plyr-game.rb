class Player

  attr_accessor :name, :lives, :points

  def initialize(name)
    @name = name
    @lives = 3
    @points = 0
  end

  def response(x)
    if x == true
      @points += 1
      puts "Correct! You just earned a point. You have #{@points}"
    else
      @lives -= 1
      puts "Wrong! You just lost a life. You have #{@lives}"
    end
  end

end

puts "Player 1, What is your name?"
player_1 = gets.chomp
@first_player = Player.new(player_1)

puts "Player 2, What is your name?"
player_2 = gets.chomp
@second_player = Player.new(player_2)

def first_question
  rand_1 = rand(1..20)
  rand_2 = rand(1..20)
  correct_answer = rand_1 + rand_2
  puts "What is #{rand_1} + #{rand_2}"
  answer = gets.chomp.to_i
  if answer == correct_answer
    @first_player.response(true)
  else
    @first_player.response(false)
  end
end

def second_question
  rand_3 = rand(1..20)
  rand_4 = rand(1..20)
  correct_answer = rand_3 + rand_4
  puts "What is #{rand_3} + #{rand_4}"
  answer = gets.chomp.to_i
  if answer == correct_answer
    @second_player.response(true)
  else
    @second_player.response(false)
  end
end

while @first_player.lives > 0 && @second_player.lives > 0
  first_question
  second_question
end


