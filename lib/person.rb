class Person #couldn't submit this the way i usually do because i accidently grabbed the https link instead of the SSH
attr_reader :name, :happiness, :hygiene
#attr_writer :happiness, :hygiene - We don't set these two symbols as attr_writer's because we've created custom writers for them below. Basically if we put them here ruby won't know which version of attr_writer to use; the one up here or the custom one we made below.
attr_accessor :bank_account

  def initialize(name)
    @name = name  #the name of our person isn't modable so we lock it in attr_reader
    @hygiene = 8  #this gets modified by "us"(the programmer) not the user so we set it as attr_reader when initializing
    @happiness = 8 #this gets modified by "us"(the programmer) not the user so we set it as attr_reader when initializing
    @bank_account = 25 #this gets modified by the user so we want it to be accessable hence the attr_accessor setting
  end
  # def max(num)      |        Originally we tried to use these methods to set a min
  #     if num > 10   |and max value for @happiness and @hygiene. We called these
  #       return 10   |methods in each method that changed the above instance variables
  #     else          |. The problem with this was the test would just add 100 to
  #       return num  |.happiness or .hygiene and check if it would = the max/min value
  #     end           |. It wouldn't so the test would fail. In order to fix that flaw
  #   end             |and make our code make more sense overall we moved :happiness
  #   def min(num)    |and :hygiene into attr_reader and created the custom methods
  #     if num < 0    |below.
  #       return 0    |
  #     else          |
  #       return num  |
  #     end           |
  #   end             |
  def happiness=(value) #we created this "custom" attr_writer method to set a min/max value on @happiness
    @happiness = value
    if @happiness < 0
      @happiness = 0
    elsif @happiness > 10
      @happiness = 10
    end
  end

  def hygiene=(value)#we created this "custom" attr_writer method to set a min/max value on @hygiene
    @hygiene = value
    if @hygiene < 0
      @hygiene = 0
    elsif @hygiene > 10
      @hygiene = 10
    end
  end

  def clean?#we want to check whether or not our person is clean
    case @hygiene
    when 0..7
      false
    else
      true
    end
  end

  def happy?#we want to check whether or not our person is happy
    case @happiness
    when 0..7
      false
    else
      true
    end
  end

  def get_paid(salary)#we wanted to modify our person's bank_account based on the money they bring in
    @bank_account += salary
    return "all about the benjamins"
  end

  def take_bath #we want to use the custom writer method when evaluating hygiene so we need to call that with self.hygiene. We use self, because self represents this instance of our person, and  that is what we want to modify... sounds recursive i know but if we used @hygiene+=4 we'd only be "hard" changing @hygiene, not running it through the custom "min/max"-attr_writer's we made.
    self.hygiene+=4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out#we want our person to enjoy working out. but we'd also like to reflect working out makes you sweat
    self.happiness+=2
    self.hygiene-=3
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)#we want our person to be happy to at the prospect of speaking to a friend
    if friend.class == Person
      friend.happiness+=3
    else
      friend = Person.new
      friend.happiness+=3
    end
    self.happiness+=3
    return "Hi #{friend.name}! It's #{@name}. How are you?"
  end

  def start_conversation(friend, topic)#we want to reflect the reality of human interaction some conversation topics increase happiness, some are draining, and some are neutral  
    case topic
    when "politics"
      friend.happiness-=2
      self.happiness-=2
      return "blah blah partisan blah lobbyist"
    when "weather"
      friend.happiness+=1
      self.happiness+=1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end
end



#Medhani = Person.new("Medhani")
