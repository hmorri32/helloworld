class Dragon
  attr_accessor :name, :color, :rider

  def initialize(name, color, rider)
    @name   = name
    @rider  = rider
    @color  = color
    @hungry = true
    @meals  = 0
  end

  def hungry?
    @hungry
  end

  def eat
    @meals += 1
    @meals == 3 ? @hungry = false : @hungry = true
  end
end