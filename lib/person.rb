# your code goes here
class Person

    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene
    def initialize(name)
        @name= name
        @bank_account = 25
        @happiness= 8
        @hygiene= 8
    end

    def happiness= (number)

        if number > 10
            @happiness= 10
        elsif number < 0
            
            @happiness= 0
        else
            @happiness=number
        end
    end
    
    def hygiene=(number)
        if number > 10
            @hygiene=10
        elsif number < 0
            
            @hygiene= 0
        else
            @hygiene=number
        end
        
    end

    def happy?
        self.happiness > 7 ? true : false
    

    end

    def clean?
        self.hygiene > 7 ? true : false
    end

    def get_paid(amount)
        @bank_account= self.bank_account + 100 
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friendName)
        self.happiness += 3
        friendName.happiness += 3
        "Hi #{friendName.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(friendName, conversation)
        case conversation
        when  "politics"
            self.happiness -= 2
            friendName.happiness -= 2
        "blah blah partisan blah lobbyist"
        when 'weather'
            self.happiness += 1
            friendName.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"

        end
    end
   
end

stella=Person.new("Stella")