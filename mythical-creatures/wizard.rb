class Wizard
  attr_accessor :name, :bearded

  def initialize(name, bearded: true)
    @name    = name
    @bearded = bearded
    @rested  = true
    @spells  = 0
  end

  def bearded?
    @bearded
  end

  def incantation(incantation)
    "sudo #{incantation}"
  end

  def rested?
    @rested
  end

  def cast
    @spells += 1
    @spells >= 3 ? @rested = false : @rested
    "MAGIC MISSILE!"
  end
end