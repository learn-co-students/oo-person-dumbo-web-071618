# your code goes here


class Person
 attr_accessor :bank_account, :happiness, :hygiene
 attr_reader :name

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(new_happiness)
    if new_happiness > 10
      @happiness = 10
    elsif new_happiness < 0
      @happiness = 0
    else
      @happiness = new_happiness
    end
    @happiness
  end

  def hygiene=(new_hygiene)
    if new_hygiene > 10
      @hygiene = 10
    elsif new_hygiene < 0
      @hygiene = 0
    else
      @hygiene = new_hygiene
    end
    @hygiene
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
    if salary >= 100
      return 'all about the benjamins'
    end
  end

  def take_bath
    self.hygiene=(@hygiene+4)
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene=(@hygiene-3)
    self.happiness=(@happiness+2)
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness=(@happiness+3)
    friend.happiness+= 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness=(@happiness-2)
      person.happiness-= 2
      "blah blah partisan blah lobbyist"

    elsif topic == "weather"
      self.happiness=(@happiness+1)
      person.happiness+= 1
      "blah blah sun blah rain"
    else
      'blah blah blah blah blah'
    end
  end
end
