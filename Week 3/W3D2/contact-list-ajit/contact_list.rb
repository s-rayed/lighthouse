require_relative 'contact'

# Interfaces between a user and their contact list. Reads from and writes to standacdrd I/O.
class ContactList
 def contact_app
   puts "Type list, new, show, or search "
   user_input = gets.chomp
   case user_input.downcase
     when "list"
       p Contact.all
     when "new"
       puts ("first name?")
       name = STDIN.gets.chomp
       puts ("email?")
       email = STDIN.gets.chomp
       Contact.create(name, email)
     when "show"
       puts "Enter the id number"
       id_num = STDIN.gets.chomp.to_i
       Contact.find(id_num) 
     when "search"
       puts "enter the value you would like to search for"
       value = STDIN.gets.chomp.to_s
       Contact.search(value)
   end
 end
end



x = ContactList.new
puts x.contact_app