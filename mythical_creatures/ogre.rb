require_relative 'human'

class Ogre
  attr_accessor :name, :home, :swings, :encounter_counter

  def initialize(name, home="Swamp")
    @name              = name
    @home              = home
    @swings            = 0
    @encounter_counter = 0
  end

  def encounter human
    human.encounter_counter += 1
    self.encounter_counter  += 1
    human.encounter_counter % 3 == 0 ? (human.notices_ogre = true; swing_at(human)) : human.notices_ogre = false
  end

  def swing_at human 
    @swings += 1
    @swings >= 2 ? human.knocked_out = true : human.knocked_out
  end

  def apologize human 
    human.knocked_out = false
  end
end