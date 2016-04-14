require_relative 'contact'

# Interfaces between a user and their contact list. Reads from and writes to standard I/O.
class ContactList

  # TODO: Implement user interaction. This should be the only file where you use `puts` and `gets`.
  case ARGV[0]

  when 'list'
    puts Contact.all
  when 'new'
    puts "What name would you like to add?"
    name = gets.chomp
    puts "What is #{name}'s email address?"
    email = gets.chomp
    Contact.create(name, email)
  when 'show'
    puts "Which contact would you like to see?"
    id = STDIN.gets.chomp()
    puts Contact.find(id)
  when 'search'
    puts "What is the term you want to search?"
    value = STDIN.gets.chomp.to_s
    puts Contact.search(value)
  else
    puts "Here is a list of available commands:
     new    - Create a new contact   
     list   - List all contacts   
     show   - Show a contact    
     search - Search contacts"
  end

end
