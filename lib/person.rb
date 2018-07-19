require "pry"

class Person 
  
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account
  
  def initialize(name) 
    @name = name
    @bank_account = 25.00
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness)
  	if happiness > 10
  		happiness = 10
  	elsif happiness < 0
  		happiness = 0
  	end
  	@happiness = happiness
  end

  def hygiene=(hygiene)
  	if hygiene > 10
  		hygiene = 10
  	elsif hygiene < 0
  		hygiene = 0
  	end
  	@hygiene = hygiene
  end

  def clean?
    self.hygiene > 7 ? true : false
  end
  
  def happy?
    self.happiness > 7 ? true : false
  end
  
  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  
  def work_out
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  def get_paid(salary)
  	self.bank_account += salary
  	"all about the benjamins"
  end

  def call_friend(friend)
  	self.happiness += 3
  	friend.happiness += 3
  	return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person,topic)
  	
  	case topic 

  		when "politics"

  			self.happiness -= 2
  			person.happiness -= 2
  			return 'blah blah partisan blah lobbyist'

  		when "weather"
  			self.happiness += 1 
  			person.happiness +=1
  			return 'blah blah sun blah rain'
  		else 
  			return 'blah blah blah blah blah'
  	end

  end


end