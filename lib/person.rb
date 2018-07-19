# your code goes here
require 'pry'

class Person

  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def get_paid(salary)
    @bank_account += salary
    return 'all about the benjamins'
  end

  def receive_payment
  end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"

  end

  def call_friend
  end

  def start_conversation
  end

  def state_emotion
  end

  def happiness=(value)
    @happiness = value
    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    end
  end

  def hygiene=(value)
    @hygiene = value
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    end
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
    self
  end

  def self.all
    @happiness
  end

end
