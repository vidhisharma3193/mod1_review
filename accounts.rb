class Account
    attr_accessor :balance, :customer, :bank

    @@all = []

    def initialize(balance, customer, bank)
        @balance = balance
        @customer = customer
        @bank = bank

        @@all << self
    end

    def self.all
        @@all
    end
 
end
