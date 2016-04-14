require 'csv'

# Represents a person in an address book.
# The ContactList class will work with Contact objects instead of interacting with the CSV file directly
class Contact

  attr_accessor :name, :email, :id, :create
  attr_reader :list, :show, :search
  
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
      contact_id = CSV.read('contact.csv', 'r').length + 1
      my_array = [contact_id, name, email]
      CSV.open("contact.csv", "a+") do |csv|
        csv << my_array
      end
    end
    
    # Find the Contact in the 'contacts.csv' file with the matching id.
    # @param id [Integer] the contact id
    # @return [Contact, nil] the contact with the specified id. If no contact has the id, returns nil.
    def find(id)
      # TODO: Find the Contact in the 'contacts.csv' file with the matching id.
      CSV.foreach('contact.csv') do |row|
      if row[0] == id
        puts row.to_s
      else
        "Sorry, doesn't exist"
      end
    end
    
    # Search for contacts by either name or email.
    # @param term [String] the name fragment or email fragment to search for
    # @return [Array<Contact>] Array of Contact objects.
    def search(term)
      # TODO: Select the Contact instances from the 'contacts.csv' file whose name or email attributes contain the search term.
      "Who would you like to search for?"
      CSV.foreach('contact.csv') do |row|
        if row.include?(name)
          puts row.to_s
        end
      end
    end

  end
end
end
