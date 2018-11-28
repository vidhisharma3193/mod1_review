class Account
    attr_accessor :customer, :bank, :balance

    @@all = []

    def self.all
        @@all
      end
  
    def initialize(customer, bank, balance)
        @customer = customer
        @bank = bank
        @balance = balance
        @@all << self
    end


end