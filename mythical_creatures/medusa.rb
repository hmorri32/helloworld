require_relative 'person'

class Medusa
  attr_accessor :name, :statues

  def initialize(name)
    @name    = name
    @statues = []
  end

  def stare(person)
    if statues.length >= 3
      @statues.push(person) && person.stoned = true
      released = @statues.shift
      released.stoned = false
    else
      @statues.push(person) && person.stoned = true
    end
  end
end