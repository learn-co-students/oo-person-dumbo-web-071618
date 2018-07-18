class Person #couldn't submit this the way i usually do because i accidently grabbed the https link instead of the SSH
attr_reader :name, :happiness, :hygiene
#attr_writer :happiness, :hygiene - We don't set these two symbols as attr_writer's because we've created custom writers for them below. Basically if we put them here ruby won't know which version of attr_writer to use; the one up here or the custom one we made below.
attr_accessor :bank_account

  def initialize(name)
    @name = name  #this name isn't modable so we lock it in attr_reader
    @hygiene = 8  #this gets modified by "us"(the programmer) not the user so we set it as attr_reader when initializing
    @happiness = 8 #this gets modified by "us"(the programmer) not the user so we set it as attr_reader when initializing
    @bank_account = 25 #this gets modified by the user so we want it to be accessable hence the attr_accessor setting
  end

  def happiness=(value)
    @happiness = value
    if @happiness < 0
      @happiness = 0
    elsif @happiness > 10
      @happiness = 10
    end
  end

  def hygiene=(value)
    @hygiene = value
    if @hygiene < 0
      @hygiene = 0
    elsif @hygiene > 10
      @hygiene = 10
    end
  end

  def clean?
    case @hygiene
    when 0..7
      false
    else
      true
    end
  end

  def happy?
    case @happiness
    when 0..7
      false
    else
      true
    end
  end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end

  def take_bath #we want to use the writer method when evaluating hygiene so we need to call that with self.hygiene
    self.hygiene+=4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness+=2
    self.hygiene-=3
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    if friend.class == Person
      friend.happiness+=3
    else
      friend = Person.new
      friend.happiness+=3
    end
    self.happiness+=3
    return "Hi #{friend.name}! It's #{@name}. How are you?"
  end

  def start_conversation(friend, topic)
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
