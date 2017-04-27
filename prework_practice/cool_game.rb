puts "I have generated a random number for you to guess, what is your guess?"


rando_number = Random.new.rand(1..100)
# puts rando_number

guess = gets.chomp.to_i

until guess == rando_number
  guess = gets.chomp.to_i

  if guess < rando_number
    puts "too low"
  elsif guess > rando_number
    puts "too high"
  end
end

puts "dasit mane"


