  @empty_bottles = "".to_i
  @bottle_caps = "".to_i

def bottles_purchase
  puts "how much would you like to spend?"
  @investment = gets.chomp.to_i
  @total_bottles = 0
  bottles_bought = @investment / 2
  @purchased_bottles = bottles_bought
  @empty_bottles += bottles_bought
  @bottle_caps += bottles_bought
  @total_bottles += bottles_bought
  puts "you spent $#{@investment} and bought #{bottles_bought} bottles, your drank them resulting in #{@empty_bottles} empty bottles and #{@bottle_caps} bottle caps."
end

bottles_purchase

@starting_empty_bottles = @empty_bottles
@starting_bottle_caps = @bottle_caps


def recycling_bottles
  if @empty_bottles >= 2
     @total_bottles += 1 
     @empty_bottles -= 2 
  end
end

def recycling_caps
  if @bottle_caps >=4
     @total_bottles += 1
     @bottle_caps -= 4
  end
end

while @empty_bottles >= 2 || @bottle_caps >= 4
  recycling_bottles
  recycling_caps
    if @empty_bottles  <= 1 && @bottle_caps <=3
      puts "Your  $#{@investment} investment gave you #{@total_bottles} total bottles. Of the total:
      #{@purchased_bottles} bottles were bought, 
      #{(@starting_empty_bottles - @empty_bottles)/2} came from recycling empty bottles,
      #{(@starting_bottle_caps - @bottle_caps)/4} came from recycling bottle caps
      You have #{@empty_bottles} empty bottles and #{@bottle_caps} bottle caps left over."
      bottles_purchase
    end
end

