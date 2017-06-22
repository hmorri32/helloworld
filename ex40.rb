mystuff = {'apple' => 'I AM APPLES!'}
puts mystuff['apple']

module MyStuff
    def MyStuff.apple()
        puts "I AM APPLES!"
    end
    # this is just a variable
    TANGERINE = "Living reflection of a dream"
end

puts MyStuff::TANGERINE

class OtherStuff
  def initialize()
    @tangerine = 'carne a suh dude'
  end

  attr_reader :tangerine

  def apple()
    puts 'suh dude apples man'
  end
end

class Song

  def initialize(lyrics)
    @lyrics = lyrics
  end

  def sing_me_a_song()
    @lyrics.each { |line| puts line }
  end

end

happy_bday = Song.new(['happy motherfricking birthday', 'dont sue me', 'bro'])

bulls_on_parade = Song.new(['carne a suh dude', 'its burrito time'])

happy_bday.sing_me_a_song()

bulls_on_parade.sing_me_a_song()