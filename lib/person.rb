# your code goes here
require 'pry'
class Person
 attr_reader :name
 attr_accessor :bank_account, :hygiene, :happiness
 

    def initialize(name, bank_account = 25 )
        @name = name 
        @bank_account = bank_account
        @happiness = 8
        @hygiene = 8
        @balance = 25
    end 

    def happiness
        @happiness = @happiness.clamp(0, 10)
    end 

    def hygiene
        @hygiene = @hygiene.clamp(0, 10)
    end 

    def happy?
         if @happiness > 7 
             true
         else 
             false 
         end 
    end 

    def clean?
        if @hygiene > 7
            true 
        else 
            false 
        end 
    end 

    def get_paid(salary)
        salary = 100 
        @bank_account += 100
        return "all about the benjamins"
    end 

    def take_bath 
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    
    def work_out 
        self.happiness += 2 
        self.hygiene -= 3
        return "♪ another one bites the dust ♫"
    end 

    def call_friend(friend)
        self.happiness += 3 
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end 

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2 
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            return "blah blah sun blah rain"
        else 
           return "blah blah blah blah blah"
        end  
        
    end 

end 

