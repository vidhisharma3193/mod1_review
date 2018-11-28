class Customer
    attr_accessor :name, :acc_type

    @@all = []

    def self.all
        @@all
      end
  
    def initialize(name, acc_type)
        @name = name
        @acc_type = acc_type
        @@all << self
    end 

    def accounts
        Account.all.select{ |account| account.customer == self}
    end

    def banks
       accounts.map{|account| account.bank}
    end

    def balance
        count = 0
        accounts.map{|account| count += account.balance}
        count
    end


end
