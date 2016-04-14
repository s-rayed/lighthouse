
class BankAccount

  def initialize(start_balance = 0, int_rate = 0, type) # the = 0 here is assigning a default value. so if the value is not given for int_rate it will take 0%
    @balance = start_balance
    @int_rate = int_rate
  end

  def balance
    @balance
  end

  attr_reader :balance # this does exactly the same thing as above

  def deposit(amount)
    if type == :tfsa and @balance 
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def creditInterest()
    deposit(@balance * @int_rate)
    # This --> @balance =+ (@balance * @int_rate) is exactly the same as above
  end
end

class TFSA < BankAccount
  LIMIT = 5000

  def initialize(start_balance=0)
    super(start_balance, 0.05)
  end

  #This isnt really how a TFSA limit works -- just as an example

  def deposit(amount)
    if (@balance + amount) > LIMIT
      puts "You cant deposit because you would be over the limit"
    else
      # lets say here you want to call the deposit method from the bank account class -- cant just write it because theres a new deposit method in this class so we can use super
      super(amount)
      # @balance += amount does exactly the same thing as above
    end
  end
end

class Membership

  def initialize(name, pin)
    @name = name
    @pin = pin
  end

  def changePIN(new_pin)
    @pin =  new_pin
  end
# The follow 2 do the exact same thing
  def pin= (new_pin)  #1
  end

  attr_writer :pin   #2

# A is equivalent to having B & C 
  attr_accessor :name   # A

  def name              # B
    @name
  end

  def name=(name)       # C
    @name = name
  end

end
