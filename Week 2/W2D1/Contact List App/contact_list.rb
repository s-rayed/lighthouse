require_relative 'contact'

# Interfaces between a user and their contact list. Reads from and writes to standard I/O.
class ContactList

  # TODO: Implement user interaction. This should be the only file where you use `puts` and `gets`.
  

  

  case ARGV[0]

  when 'list'
    puts Contact.all
  when 'new'
    puts "What name would you like to add?"
    name = STDIN.gets.chomp
    puts "What is #{name}'s email address?"
    email = STDIN.gets.chomp
    Contact.create(name, email)
  when 'show'
    puts "Which contact would you like to see?"
    id = STDIN.gets.chomp
    puts Contact.find(id)
  when 'search'
    puts "What is the name of the person you would like to search?"
    name = STDIN.gets.chomp()
    puts Contact.search(name)
  else
    puts "Here is a list of available commands:
     new    - Create a new contact   
     list   - List all contacts   
     show   - Show a contact    
     search - Search contacts"
  end

end
