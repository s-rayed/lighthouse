require 'csv'

# Represents a person in an address book.
# The ContactList class will work with Contact objects instead of interacting with the CSV file directly
class Contact

  attr_accessor :name, :email, :id
  attr_reader :list, :create, :show, :search
  
  # Creates a new contact object
  # @param name [String] The contact's name
  # @param email [String] The contact's email address
  def initialize(name, email)
    @name = name
    @email = email
    @row = 0
    @contact_id = contact_id
    # TODO: Assign parameter values to instance variables.
  end

  # Provides functionality for managing contacts in the csv file.
  class << self

    # Opens 'contacts.csv' and creates a Contact object for each line in the file (aka each contact).
    # @return [Array<Contact>] Array of Contact objects
    def all
      # TODO: Return an Array of Contact instances made from the data in 'contacts.csv'.
      CSV.foreach('contact.csv') do |row|
        puts row.inspect
      end
      
    end

    # Creates a new contact, adding it to the csv file, returning the new contact.
    # @param name [String] the new contact's name
    # @param email [String] the contact's email
    def create(name, email)
      # TODO: Instantiate a Contact, add its data to the 'contacts.csv' file, and return it.
      row_array = CSV.read('contacts.csv').length
      CSV.open("contacts.csv", "a") do |csv|
        csv << [row_array + 1, name,  email]
      end
    end
    
    # Find the Contact in the 'contacts.csv' file with the matching id.
    # @param id [Integer] the contact id
    # @return [Contact, nil] the contact with the specified id. If no contact has the id, returns nil.
    def find(id)
      # TODO: Find the Contact in the 'contacts.csv' file with the matching id.
      CSV.read('contacts.csv').each do |row|
      if id == row[0].to_i
        puts row
      else
        "Sorry, doesn't exist"
      end
    end
    
    # Search for contacts by either name or email.
    # @param term [String] the name fragment or email fragment to search for
    # @return [Array<Contact>] Array of Contact objects.
    def search(value)
      # TODO: Select the Contact instances from the 'contacts.csv' file whose name or email attributes contain the search term.
      CSV.read('contacts.csv').each do |row|
        if row[1].include?(term)
          puts "#{row[0]}, #{row[1]}, #{row[2]}"
        elsif row[2].include?(term)
          puts "#{row[0]}, #{row[1]}, #{row[2]}"
        else
          puts "done"
        end
      end
    end

  end
end
end
