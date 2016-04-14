require 'csv'

# Represents a person in an address book.
# The ContactList class will work with Contact objects instead of interacting with the CSV file directly
class Contact

 attr_accessor :name, :email
 
 # Creates a new contact object
 # @param name [String] The contact's name
 # @param email [String] The contact's email address
 def initialize(name, email)
       @name = name
       @email = email
 end

 # Provides functionality for managing contacts in the csv file.
 class << self

   # Opens 'contacts.csv' and creates a Contact object for each line in the file (aka each contact).
   # @return [Array<Contact>] Array of Contact objects
   def all
     # TODO: Return an Array of Contact instances made from the data in 'contacts.csv'.
     CSV.foreach('contacts.csv') do |row|
       puts row.inspect
     end
   end

   # Creates a new contact, adding it to the csv file, returning the new contact.
   # @param name [String] the new contact's name
   # @param email [String] the contact's email
   def create(name, email)
     row_array = CSV.read('contacts.csv').length
     CSV.open('contacts.csv', 'a') do |csv_object|
       csv_object << [row_array + 1, name, email]
     end

     # TODO: Instantiate a Contact, add its data to the 'contacts.csv' file, and return it.
   end
   
   # Find the Contact in the 'contacts.csv' file with the matching id.
   # @param id [Integer] the contact id
   # @return [Contact, nil] the contact with the specified id. If no contact has the id, returns nil.
   def find(id)
     id_array = []
     # TODO: Find the Contact in the 'contacts.csv' file with the matching id.
     CSV.read("contacts.csv").each do |row|
       if id == row[0].to_i
         puts row 
       else
         "not found"
       # # if row[0] == id.to_s
       # return Contact.find(row[1],[2])
       end
     end
   end
   
   # Search for contacts by either name or email.
   # @param term [String] the name fragment or email fragment to search for
   # @return [Array<Contact>] Array of Contact objects.
   def search(term)
     # csv = CSV.read("contacts.csv")
     CSV.read("contacts.csv").each do |row|
       # if row.size > 0
         if row[1].include?(term)
            puts ("#{row[0]}, #{row[1]}, #{row[2]}")
         elsif row[2].include?(term)
            puts ("#{row[0]}, #{row[1]}, #{row[2]}")
         else
           puts "finished"
         end
       end
   end
 end
end