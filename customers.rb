class Customer
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
        Account.all.select { |account| account.customer == self}
    end

    # .uniq
        # used .uniq to give uniq list

    def banks
        # self.accounts.map do |account|
        #     account.bank
        # end.uniq

        accounts.map do |account|
            account.bank
        end.uniq
    end

    # Customer#balance should return total balance from all the accounts from all the bank that are associated with the customer

    def balance
        # accounts.reduce(0){|sum,account| sum + account.balance}

        # total = 0
        # accounts.each {|account| total += account.balance}
        # total

        accounts.map{|account| account.balance}.sum
    end
   
end
