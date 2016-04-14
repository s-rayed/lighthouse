require_relative 'contact2'

# Interfaces between a user and their contact list. Reads from and writes to standard I/O.
class ContactList
# TODO: Implement user interaction. This should be the only file where you use `puts` and `gets`.

end

if (ARGV.empty?)
  puts "Here is a list of available commands:\n
  new - Create new contact\n
  list - List all contacts\n
  show - Find a contact by ID\n
  search - Search for a contact\n
  update - Update an existing contact"
else
  case ARGV[0]
  when "list"
    Contact.all
  when "new"
    puts "What is the contacts name?"
    name = STDIN.gets.chomp
    puts ("What is the contacts email?")
    email = STDIN.gets.chomp
    Contact.create(name, email)
  when "show"
    puts "Enter the id number"
    id_num = STDIN.gets.chomp.to_i
    Contact.find(id_num) 
  when "search"
    puts "What term would you like to search for?"
    value = STDIN.gets.chomp.to_s
    Contact.search(value)
  when "update"
    puts "What is the id number of the contact you want to update?"
    id_num = STDIN.gets.chomp.to_i
    Contact.save(id_num)
  when "destroy"
    puts "What is the id number of the contact you want to delete?"
    id_num = STDIN.gets.chomp.to_i
    Contact.destroy(id_num) 
  end
end