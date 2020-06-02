require 'pry'
require_relative './customers'
require_relative './banks'
require_relative './accounts'

chase = Bank.new("JPMCHASE")
wellsFargo = Bank.new("Wells Fargo")

c1 = Customer.new("Nicole")
c2 = Customer.new("David")

acc1 = Account.new(1000, c1, chase)
acc2 = Account.new(5000, c1, wellsFargo)
acc3 = Account.new(5000, c2, chase)
acc4 = Account.new(9500, c2, chase)
acc5 = Account.new(3600, c2, wellsFargo)


binding.pry
0
