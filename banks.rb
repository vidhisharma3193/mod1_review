class Bank
    attr_accessor :name

    @@all = []

    def self.all
        @@all
      end
  
    def initialize(name)
        @name = name
        @@all << self
    end

    def accounts
        Account.all.select{ |account| account.bank == self}
    end

    def customers
        accounts.map{|account| account.customer}
     end
 


end