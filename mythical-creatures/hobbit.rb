class Hobbit
  attr_accessor :name, :disposition, :age

  def initialize(name, disposition="homebody")
    @name        = name
    @disposition = disposition
    @age         = 0
    @adult       = false
    @old         = false
    @has_ring    = false
    @short       = true
  end

  def celebrate_birthday
    @age += 1
    @age > 32 ? @adult = true : @adult
    @age > 100 ? @old = true : @old
  end

  def adult?
    @adult
  end

  def old?
    @old
  end

  def has_ring?
    @name == "Frodo" ? @has_ring = true : @has_ring
  end

  def is_short?
    @short
  end
end

