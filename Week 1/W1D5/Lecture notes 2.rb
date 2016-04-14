require 'pry'
require_relative 'bank_account'



# ask BankAccount class to create an instance of BankAccount
some_account = BankAccount.new(5000) # you can do this with any class. m = Array.new or m = Hash.new -- now we are just using this way to create a new thing of our own class
# the value in the brackets in BankAccount.new would be the arguments of your initialize in BankAccount class. so start_balance = 5000, int_rate = 0.01

some_account.deposit(123)

some_account.withdraw(100)
p some_account.balance

bob = Membership.new("Bob", "1234")

bob.changePIN("4321")
bob.pin = "1234"



p some_account.balance






binding.pry

