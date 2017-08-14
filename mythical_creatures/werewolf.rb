class Werewolf
  attr_accessor :name, :location, :victim_count

  def initialize (name, location="shameless green")
    @name         = name
    @location     = location
    @human        = true
    @werewolf     = false
    @hungry       = false
    @victim_count = 0
  end

  def human?
    @human
  end

  def wolf?
    @werewolf
  end

  def change!
    @human    = !@human
    @werewolf = !@werewolf
    @hungry   = !@hungry
  end

  def hungry?
    @hungry
  end

  def consume(victim)
    @human ? "no eats" :
    victim.status  = :dead
    @victim_count += 1
    @hungry        = false
  end


end
