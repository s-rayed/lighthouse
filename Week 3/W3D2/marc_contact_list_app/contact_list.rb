require_relative 'contact'

# Interfaces between a user and their contact list. Reads from and writes to standard I/O.
class ContactList

end


  # TODO: Implement user interaction. This should be the only file where you use `puts` and `gets`.

if ARGV.empty?
  puts "Here is a list of available commands:\n
  new - Create new contact\n
  list - List all contacts\n
  find - Find a contact by ID\n
  search - Search for a contact\n
  update - Update a contact by ID\n
  destroy - Destroy a contact by ID"
else

  case ARGV[0]
  when 'new'
    p "Please enter contact's Name:"
    name = STDIN.gets.chomp
    p "Please enter contact's E-mail:"
    email = STDIN.gets.chomp
    Contact.create(name,email)
  when 'list'
    Contact.all
  when 'find'
    p "Please enter contact id:"
    id = STDIN.gets.chomp
    p Contact.find(id)
  when 'search'
    p "Please enter term for search"
    term = STDIN.gets.chomp.downcase
      Contact.search(term)
  when 'update'
    p "Please enter contact id:"
    id = STDIN.gets.chomp
    Contact.save(id)
  when 'destroy'
    p "Please enter contact id:"
    id = STDIN.gets.chomp
    Contact.destroy(id)
  end
end
