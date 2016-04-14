# A Hash is a collection of key-value pairs like this: "employee" => "salary". It is similar to an Array, except that indexing is done via arbitrary keys of any object type, not an integer index.
#
# The order in which you traverse a hash by either key or value may seem arbitrary and will generally not be in the insertion order. If you attempt to access a hash with a key that does not exist, the method will return nil.

#CREATING HASHES
#contacts = Hash.new

#contacts = Hash.new( "contact" )

#puts contacts["contact"]

#contacts = Hash.new "contact"










# old
person1 = {"name" => "Adam", age: 24, "hobbies" => ["Skateboarding", "Snowboarding"]}



person2 = {:name => "Faisal", :age => 24}

# new
person3 = {name: "Tammy", age: 29, "hobbies" => ["Tennis", "Makeup"]}

person4 = {
  name: "Bob",
  age: 27,
  hobbies: ["Programming", "Reading"]
}

person5 = {
  name: "Jen",
  city: "Toronto",
  phone_numbers: {mobile: "6479978509", home: "2892324545"}
}

months = ["Jan", "Feb", "Mar", "Apr", "May", "June", "July", "August", "Sept", "Oct", "Nov", "Dec"]

people = []
1000.times do |i|
  person = {
    name: "Contact#{i}",
    age: i * 10,
    birth_month: months[i]
  }
  people << person
end

puts people
