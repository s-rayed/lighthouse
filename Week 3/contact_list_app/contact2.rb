require 'csv'
require 'pg'
require 'pry'

# Represents a person in an address book.
# The ContactList class will work with Contact objects instead of interacting with the CSV file directly
class Contact

  attr_accessor :name, :email
  attr_reader :id
  
  @@conn = PG.connect(
    host: 'localhost',
    dbname: 'contacts',
    user: 'development',
    password: 'development'
    )

  # Creates a new contact object
  # @param name [String] The contact's name
  # @param email [String] The contact's email address
  def initialize(name, email, id=nil)
    @name = name
    @email = email
    @id = id
    # TODO: Assign parameter values to instance variables.
  end

  # Provides functionality for managing contacts in the csv file.
  class << self
  
    # Opens 'contacts.csv' and creates a Contact object for each line in the file (aka each contact).
    # @return [Array<Contact>] Array of Contact objects
    def all
      # TODO: Return an Array of Contact instances made from the data in 'contacts.csv'.
      puts 'Finding contacts...'
      @@conn.exec("SELECT * FROM contacts ORDER BY id;") do |results|
        #results is a collection (array) of hashes.
        results.map do |contact|
          p contact
        end
      end
      
      # THIS IS FROM CONTACT LIST VERSION 2
      # CSV.foreach('contacts.csv') do |row|
      #   puts row.inspect
      # end
    end
  
    # Creates a new contact, adding it to the csv file, returning the new contact.
    # @param name [String] the new contact's name
    # @param email [String] the contact's email
    def create(name, email)

      @@conn.exec("INSERT INTO contacts (name, email) VALUES ($1, $2);", [name, email]) do |results|
        @id = results[0]["id"]
      end
     puts 'Contact created'

     # THIS IS FROM CONTACT LIST VERSION 2
      # row_array = CSV.read('contacts.csv').length
      # CSV.open('contacts.csv', 'a') do |csv_object|
      #   csv_object << [row_array + 1, name, email]
      # end
      # TODO: Instantiate a Contact, add its data to the 'contacts.csv' file, and return it.
    end
    
    # Find the Contact in the 'contacts.csv' file with the matching id.
    # @param id [Integer] the contact id
    # @return [Contact, nil] the contact with the specified id. If no contact has the id, returns nil.
    def find(id)
      id_array = []
      # TODO: Find the Contact in the 'contacts.csv' file with the matching id.
      result = @@conn.exec("SELECT * FROM contacts WHERE id=$1", [id])
      if result.values.empty?
        puts 'Contact not found'
      else
        puts "#{result[0]['name']}, #{result[0]['email']}"
      end

      # CSV.read("contacts.csv").each do |row|
      #   if id == row[0].to_i
      #     puts row 
      #   else
      #     "not found"
      #   end
      # end
    end

    def save(id)
      puts "Please enter a new name"
      name = STDIN.gets.chomp
      puts "Please enter a new email"
      email = STDIN.gets.chomp
      @@conn.exec("UPDATE contacts SET name = $1, email = $2 WHERE id = $3", [name, email, id])


    end

    # Search for contacts by either name or email.
    # @param term [String] the name fragment or email fragment to search for
    # @return [Array<Contact>] Array of Contact objects.
    def search(term)
      
      result = @@conn.exec("SELECT * FROM contacts WHERE name LIKE '%#{term}%' OR email LIKE '%#{term}%'")
      result.values.each do |contact|
        pp Contact.new(contact[1], contact[2], contact[0])
        # puts contact1.name
      end
    # count = 0
      # CSV.read("contacts.csv").each do |row|
      #   if row[1].include?(term)
      #     puts ("#{row[0]}, #{row[1]}, #{row[2]}")
      #   elsif row[2].include?(term)
      #     puts ("#{row[0]}, #{row[1]}, #{row[2]}")
      #   else
      #     puts "finished"
      #   end
      # end
    end

    def destroy(id)

      result = @@conn.exec("DELETE FROM contacts WHERE id = $1", [id])
      puts 'Contact Deleted'

    end


  end
end

# TODO: Select the Contact instances from the 'contacts.csv' file whose name or email attributes contain the search term.