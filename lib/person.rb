# your code goes here
require 'pry'


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
    # if value > 10
    #   @happiness = 10
    # elsif value < 0
    #   @happiness = 0
    # else
    #   @happiness = value
    # end
    value > 10 ? @happiness = 10 : (value < 0 ? @happiness = 0 : @happiness =+ value)
  end

  def hygiene=(value)
    # if value > 10
    #   @hygiene = 10
    # elsif value < 0
    #   @hygiene = 0
    # else
    #   @hygiene = value
    # end
    value > 10 ? @hygiene = 10 : (value < 0 ? @hygiene = 0 : @hygiene = value)
  end

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    friend.happiness += 3
    self.happiness += 3

    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end


  def start_conversation(person, topic)
    case topic
      when "politics"
        self.happiness -= 2
        person.happiness -= 2
        "blah blah partisan blah lobbyist"
      when "weather"
        self.happiness += 1
        person.happiness += 1
        "blah blah sun blah rain"
      else
         "blah blah blah blah blah"
    end
  end

end
