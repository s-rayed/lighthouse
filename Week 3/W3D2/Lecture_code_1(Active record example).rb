#Active Record Pattern
require "pg"

@@conn = PG.connect(
  host: ‘localhost’,
  dbname: ‘w3d2lectureMar28’
)

class Country

  attr_accessor :name, :population, :capital, :area
  attr_reader :id

  def initialize(name, population, capital, area, id=nil)
    @name = name
    @population = population
    @capital = capital
    @area = area
    @id = id
  end

  def self.all
    #return all countries as instances
    countries = nil

    @@conn.exec(‘SELECT * FROM countries;’) do |results|
      countries = results.map do |c|
        Country.new(c["name"],c["population"].to_i,c["capital"],c["area"].to_i,c["id"].to_i)
      end
    end
        # converting from an array of maps to an array of objects.
        # c["name"] --> getting the info from the hash that pg is giving and
        # creating a new instance of Country with it.
    countries
  end

  def saved?
    if self.id ? true : false
  end

  def save
    #at this point we have already created an object with all of the information from the data base earlier.

    # @@conn.exec("INSERT INTO countries (name, population, capital, area) VALUES #{self.name}, #{self.population}, #{self.capita}, #{self.area}")
    # DONT DIRECTLY INTERPOLATE SQL QUERIES AS FOLLOWS
    # MAJOR SECURITY HOLE -- YOU MUST USE exec_params
    if saved?
      #update -- but how do we know if its saved.. so we add a paramater id to initialize with nil default value
      # add this id to the conn.exec array. -- This is because before saving, id = nil, but when its saved in the table all entries get id values. so we use this id values.
      @@conn.exec_params("UPDATE INTO countries (name, population, capital, area) VALUES ($1, $2, $3, $4) WHERE id = $5", [self.name, self.population, self.capital, self.area, self.id])
      # So, now if an object has an id it runs this code (update) if it doesnt it goes to the else code (Insert(create)).
    else

      @@conn.exec_params("INSERT INTO countries (name, population, capital, area) VALUES ($1, $2, $3, $4) RETURNING id", [self.name, self.population, self.capital, self.area]) do |results|
          @id = results[0]["id"]
        end
    #exec params takes the input values and swaps in the placeholder values ($1,$2,$3) but before that it will do the escape
    end
    # The problem here is that if the main.rb file keeps asking c.save, it will continue to create new instances of fakeland, we actually want it to update not create
  end


end