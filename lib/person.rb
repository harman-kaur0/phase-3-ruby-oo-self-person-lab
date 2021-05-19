# your code goes here
class Person 
    attr_reader :name 
    attr_accessor :bank_account, :happiness, :hygiene
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness)
        @happiness= happiness.clamp(0, 10)  
    end

    def hygiene=(hygiene)
        @hygiene= hygiene.clamp(0, 10)
    end

    def clean? 
        @hygiene > 7    
    end

    def happy?
        @happiness > 7
    end

    def get_paid salary
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath 
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness +=2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness += 3
        self.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation (person, topic)
        case topic
        when "politics"
            person.happiness -= 2
            self.happiness -= 2
            "blah blah partisan blah lobbyist"

        when "weather"
            person.happiness += 1
            self.happiness += 1
            "blah blah sun blah rain"

        else 
            "blah blah blah blah blah"
        end
    end
            
end