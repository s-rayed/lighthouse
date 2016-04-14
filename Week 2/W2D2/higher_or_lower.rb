require_relative('./h_o_l_player')

class Game

  def initialize(players)
    @players = players
    @turn = 0
    @lower = 1
    @upper = 100
  end

  def start 
    while true
      random_num_1 = Game.generate_random(@lower, @upper)
      puts "The first card is #{random_num_1}"
      user_response = ask_question_and_guess
      random_num_2 = Game.generate_random(@lower, @upper)
      break unless user_response != 'q'
      show_answer(check_answer(random_num_1, random_num_2, user_response))
      next_turn
    end
  end

  def next_turn
    @turn = (@turn == 0) ? 1 : 0
    puts "=========================="
  end

  def ask_question_and_guess
    puts "Please guess higher or lower? [H/l/q]"
    guess = gets.chomp
  end

  def check_answer(random_1, random_2, user_guess)
    (random_1 > random_2 && user_guess == 'l') || 
    (random_1 < random_2 && user_guess == 'h')
  end

  def show_answer(is_correct)
    puts is_correct ? "CORRECT!" : "Player #{@turn + 1} is wrong!"
  end

  class << self
    def generate_random(upper, lower)
      rand(upper..lower)
    end
  end

end

# --------------

p1 = Player.new('p1')
p2 = Player.new('p2')

higher_or_lower = Game.new([p1, p2])
higher_or_lower.start
