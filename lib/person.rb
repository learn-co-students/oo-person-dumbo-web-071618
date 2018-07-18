require 'pry'
# get paid/receive payments
# take a bath
# call a friend
# start a conversation
# state if they are happiness and/or clean

class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    def get_paid(bank_account)
        @bank_account += bank_account
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
        
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        # same as ==> penelope.hygiene = penelope.hygiene - 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3 #todo - check to see if this works
        "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(friend, topic) #instance functions
        case topic.downcase
        when "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

    #======= ACCESSOR METHODS ===========#

    def happiness=(num)
        @happiness = num
        
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        end
    end

    def hygiene=(num)
        # binding.pry
        @hygiene = num 
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        end
    end
end

