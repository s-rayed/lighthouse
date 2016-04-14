 require 'pg'
require 'csv'

# Represents a person in an address book.
# The ContactList class will work with Contact objects instead of interacting with the CSV file directly
class Contact

  attr_accessor :name, :email
  attr_reader :id
  # Creates a new contact object
  @@conn = PG.connect(
    host: 'localhost',
    dbname: 'contacts',
    user: 'development',
    password: 'development'
    )
  # @param name [String] The contact's name
  # @param email [String] The contact's email address
  def initialize(name, email, id=nil)
    # TODO: Assign parameter values to instance variables.
    @name=name
    @email=email
    @id=id
  end

  # Provides functionality for managing contacts in the csv file.
  class << self

    # Opens 'contacts.csv' and creates a Contact object for each line in the file (aka each contact).
    # @return [Array<Contact>] Array of Contact objects
    def all
      # TODO: Return an Array of Contact instances made from the data in 'contacts.csv'.
      puts 'Finding contacts...'
      @@conn.exec('SELECT * FROM contacts;') do |results|
  # results is a collection (array) of records (hashes) 
        results.map do |contact|
           p contact
        end
      end
    end
iadding it to the csv file, returning the new contact.
    # @param name [String] the new contact's name
    # @param email [String] the contact's email
    def create(name, email)
      # TODO: Instantiate a Contact, add its data to the 'contacts.csv' file, and return it.
      @@conn.exec_params("INSERT INTO contacts (name, email) VALUES ($1, $2) RETURNING id;", [name, email]) do |results|
      @id = results[0]["id"]
      end
      puts "Contact created."  #add trim to end
    end

    def destroy(id)
      results = @@conn.exec_params('DELETE from contacts WHERE id=$1;',[id])
      puts "Contact deleted."
    end
    
    # Find the Contact in the 'contacts.csv' file with the matching id.
    # @param id [Integer] the contact id
    # @return [Contact, nil] the contact with the specified id. If no contact has the id, returns nil.
    def find(id)
      results = @@conn.exec_params('SELECT * from contacts WHERE id=$1;',[id])
      if results[0]
        puts "Contact found."
        Contact.new_from_row(results[0])
      else
        puts "Contact not found."
      end
      # TODO: Find the Contact in the 'contacts.csv' file with the matching id.
    end

    def new_from_row(c)
      Contact.new(c["name"],c["email"],c["id"])
    end
    
    def save(id)
      puts "Please enter new name"
        name = STDIN.gets.chomp
      puts "Please enter new address"
        email = STDIN.gets.chomp
      @@conn.exec_params("UPDATE contacts SET name=$1, email=$2 WHERE id=$3;", [name, email, id])
      puts "Contact updated."
    end

    def search(term)
      results = @@conn.exec_params("SELECT * from contacts WHERE name LIKE '%#{term}%' OR email LIKE '%#{term}%';")
      if results[0]
        results.map { |result| p result }
      else
        puts "No results found."
      end
    end

    # Search for contacts by either name or email.
    # @param term [String] the name fragment or email fragment to search for
    # @return [Array<Contact>] Array of Contact objects.

      # TODO: Select the Contact instances from the 'contacts.csv' file whose name or email attributes contain the search term.
  end

end
