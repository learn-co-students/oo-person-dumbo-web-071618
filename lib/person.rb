<<<<<<< HEAD
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

 def happiness=(value)
  
    if value > 10 
    @happiness = 10 
    elsif value < 0 
    @happiness = 0 
    else 
    @happiness = value 

    end

end

def hygiene=(value)
    if value > 10 
        @hygiene = 10 
        elsif value < 0 
        @hygiene = 0 
        else 
        @hygiene = value 
    
        end


end 
 
def happy?
  @happiness > 7
end 

def clean?
    @hygiene > 7
end 


def get_paid(salary) 
    @bank_account += salary 

  "all about the benjamins"



end 

def take_bath
 self.hygiene +=4
 "♪ Rub-a-dub just relaxing in the tub ♫"
end 

def work_out
self.hygiene -= 3
self.happiness += 2
"♪ another one bites the dust ♫"
end 

def call_friend(value)
 
    value.happiness +=3
    self.happiness += 3
   
        "Hi #{value.name}! It's #{self.name}. How are you?"
    

end 


def start_conversation(person, topic)
  
    case topic 
    when "politics"
        person.happiness -= 2
        self.happiness -= 2 
        "blah blah partisan blah lobbyist"        
    when "weather"

  person.happiness +=1
  self.happiness += 1 
  "blah blah sun blah rain"


    else 
        "blah blah blah blah blah" 
    end 



end 

end
=======

# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness_points, :hygeine_points

    def intialize(name)
    @name = name 
    @bank_account = 25
    @happiness = 8 
    @hygeine = 8 
    
end


def happiness=(value)
    if value  > 10 
        @happiness = 10 

    elsif value < 0 
        
        @happiness = 0

    end 

end 

def hygeine=(value= 4)
    if value  > 10 
        @hygeine = 10 

    elsif value < 0 
        
        @hygeine = 0

    end 

end  



 def clean?
 @hygeine > 7 
 
 end 

 def happy?
 
    @happiness > 7 

 end 


 def get_paid(salary)
    @bank_account += salary
    "All about the benjamins"

 end

 def take_bath
   
 (@hygeine += 4)  > 10  ? @hygeine = 10 : @hygeine += 4
 "♪ Rub-a-dub just relaxing in the tub ♫"
end 

def work_out
    #(@happiness += 2) > 10 ? @happiness = 10 : @happiness += 2 
    #(@hygeine -= 3) <= 0 ? @hygeine =0 : @hygeine -= 3
    
    
    
    "♪ another one bites the dust ♫"
end 

end
>>>>>>> acd1a4246787d686fa88f3a24e36f60f64db341e
