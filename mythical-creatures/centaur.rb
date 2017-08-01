class Centaur
  attr_accessor :name, :breed

  def initialize(name, breed)
    @name       = name
    @breed      = breed
    @cranky     = false
    @standing   = true
    @shot_count = 0
    @laying     = false
  end

  def shoot
    @shot_count += 1
    @shot_count >= 3 || @laying ? (@cranky = true; 'NO!') : "Twang!!!"
  end

  def run
    @cranky || @laying ? 'NO!' : "Clop clop clop clop!!!"
  end

  def cranky?
    @cranky
  end

  def standing?
    @standing
  end

  def laying?
    @laying
  end

  def sleep
    @standing ? 'NO!' : (@cranky = false; @shot_count = 0)
  end

  def lay_down
    @standing = false
    @laying   = true
  end

  def stand_up
    @standing = true
    @laying   = false
  end
end
