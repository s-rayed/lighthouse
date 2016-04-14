@turn = 0

puts "What is your name player 1?"
name_1 = gets.chomp
puts "What is your name player 2?"
name_2 = gets.chomp

def prompt
  puts "#{@players[@turn][:name]}, it is your turn: "
end


def question
  num_1 = rand(1..20)
  num_2 = rand(1..20)
  @answer = num_1 + num_2
end

def whose_turn
  if @turn == 0
    @turn = 1
  else
    @turn = 0
  end
end


def eval_answer
  if input == @answer
    puts "Correct!"
  else
    players[@turn][:lives] -= 1
  end
end

player = [
    {
    name: name_1,
    score: 0,
    lives: 3
  },
  {
    name: name_2,
    score: 0,
    lives: 3
  }
]

while @players[0][:lives] > 0 && @players[1][:lives] > 0
  prompt
  question
  answer = gets.chomp.to_i
  eval_answer
  whose_turn
end




