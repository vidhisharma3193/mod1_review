class Bank
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def accounts
        Account.all.select { |account| account.bank == self}
    end

    def customers
        accounts.map {|account| account.customer }.uniq
    end

    def open_account(customer)
        Account.new(100, customer, self)
    end
    
end
