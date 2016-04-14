def shakil_the_dog
  while true
  puts "Shakil is barking, say something."
  input = gets.chomp.downcase

  case input

    when "woof"
      puts "WOOF WOOF WOOF"
    when "shakil stop" || "shakil stop!"
      puts "*quiet*"
    when "meow"
      puts "WOOF WOOF WOOF WOOF WOOF"
    when /.*treat.*/
      puts "shakil is expecting a treat"
    when "go away"
      break
    else
      puts "WOOF"
    end
  end
end
 
# Run our method
shakil_the_dog