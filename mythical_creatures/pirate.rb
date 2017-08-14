class Pirate
  attr_accessor :name, :job, :booty

  def initialize(name, job="Scallywag")
    @name         = name
    @job          = job
    @cursed       = false
    @heinous_acts = 0
    @rob_ship     = true
    @booty        = 0
  end

  def cursed?
    @cursed
  end

  def commit_heinous_act
    @heinous_acts += 1
    @heinous_acts >= 3 ? @cursed = true : @cursed
  end

  def rob_ship
    @booty = 100
    @rob_ship
  end
end
