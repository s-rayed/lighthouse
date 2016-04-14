class Player

    attr_reader :life, :point, :name

    def initialize(name)
        @name = name 
        @life = 3
        @point = 0
    end

    def response(x)
        if x == true
            @point += 1
            puts "you gained a point and have #{@point}"
        else
            @life -= 1
            puts "you lost a life and have #{@life} lives left"
        end
    end
end


puts "player 1, what is your name?"

player_1  = gets.chomp
@first_player = Player.new(player_1)


puts "player 2, what is your name?"
player_2  = gets.chomp
@second_player = Player.new(player_2)

def first_question
    random_1 = rand(1..20)
    random_2 = rand(1..20)
    computer_answer = random_1 + random_2
    puts "what is #{@first_player.name} answer to #{random_1} + #{random_2}"
    answer = gets.chomp.to_i
    if answer == computer_answer
        @first_player.response(true) 
    else 
        @first_player.response(false)
    end
end

def second_question
    random_3 = rand(1..20)
    random_4 = rand(1..20)
    computer_answer = random_3 + random_4
    puts "what is #{@second_player.name} answer to #{random_3} + #{random_4}"
    answer = gets.chomp.to_i
    if answer == computer_answer
         @second_player.response(true)
    else 
         @second_player.response(false)
    end
end


while @first_player.life > 0 || @second_player.life > 0
      puts first_question
      puts second_question
end