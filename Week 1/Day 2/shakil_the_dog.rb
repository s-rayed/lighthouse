# Save this file to your computer so you can run it 
# via the command line (Terminal) like so:
#   $ ruby shakil_the_dog.rb
#
# Your method should wait for user input, which corresponds
# to you saying something to your dog (named Shakil).
 
# You'll probably want to write other methods, but this 
# encapsulates the core dog logic
require 'pry'
def shakil_the_dog
  while true
    print "Give shakil a command:"
    input = gets.chomp

    case input

    when "woof"
      puts "WOOF WOOF WOOF"
    binding.pry
    when "shakil stop" || "SHAKIL STOP!"
      puts ""
    when "meow"
      puts "woof woof woof woof woof"
    when /.*treat.*/
      puts "shakilexpectsatreat"
    when "go away"
      break
    else
      puts "woof"
    end
  end
end

# Run our method
shakil_the_dog