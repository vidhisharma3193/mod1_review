require 'pry'
require_relative './banks.rb'
require_relative './customers.rb'
require_relative './accounts.rb'

c1 = Customer.new("Vidhi", "Savings")
c2 = Customer.new("Josh", "Checking")
c3 = Customer.new("Micheal", "Savings")

b1 = Bank.new("Chase")
b2 = Bank.new("BOFA")
b3 = Bank.new("Green Bank")

a1 = Account.new(c1,b1,2000)
a2 = Account.new(c1,b2,5000)
a3 = Account.new(c2,b2,1000)
a4 = Account.new(c3,b1,5000)
a5 = Account.new(c3,b2,7000)

binding.pry
