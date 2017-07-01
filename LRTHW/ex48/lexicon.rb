class Lexicon
  attr_accessor :lexicon, :dict
  
  def initialize()
    @dict = {
      :north    => :direction,
      :south    => :direction,
      :east     => :direction,
      :west     => :direction,
      :go       => :verb,
      :kill     => :verb,
      :eat      => :verb,
      :bear     => :noun,
      :princess => :noun,
      :the      => :stop,
      :in       => :stop,
      :of       => :stop,
    }
  end

  Pair = Struct.new(:qualifier, :value)

  def scan(list)
    pairs = []
    list.split.map do | value |
      puts value
      if value.match( /^[0-9]+$/ ) 
        pairs.push( Pair.new(:number, value.to_i) )
      elsif qualifier = @dict[value.intern]
        pairs.push( Pair.new(qualifier, value) )
      else
        pairs.push( Pair.new(:error, value.to_s) )        
      end
    end
    pairs
  end

end