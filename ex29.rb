people = 20
cats   = 30
dogs   = 15

if people < cats
  puts "too many cats"
end

if people > cats
  puts "not many cats"
end

if people < dogs
  puts " the world is drooled on"
end

if people > dogs
  puts " the world is dry"
end

dogs += 5

if people >= dogs
  puts "equal"
end

if people <= dogs
  puts "People are less than or equal to dogs."
end


if people == dogs
  puts "People are dogs."
end


people = 30
cars   = 40
trucks = 15


if cars > people
  puts "We should take the cars."
elsif cars < people
  puts "We should not take the cars."
else
  puts "We can't decide."
end

if trucks > cars
  puts "That's too many trucks."
elsif trucks < cars
  puts "Maybe we could take the trucks."
else
  puts "We still can't decide."
end

if people > trucks
  puts "Alright, let's just take the trucks."
else
  puts "Fine, let's stay home then."
end

