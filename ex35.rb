def gold_room
  puts "there be gold in this room. how much do you want"

  print ">"
  choice = $stdin.gets.chomp

  if choice.include?("") || choice.include?("1")
    how_much = choice.to_i
  else
    dead("learn how to type numbers bra")
  end

  if how_much < 50
    puts "not greedy. cool"
    exit(0)
  else
    dead("greedy. not cool.")
  end
end


def bear_room
  puts "there is a bear here."
  puts "the bear has heaps of honey."
  puts "the fat bear is in front of another door."
  puts "how will you move the bear?"
  bear_moved = false

  while true
    print ">"
    choice = $stdin.gets.chomp

    if choice == "take honey"
      dead("the bear slaps your face off.")
    elsif choice == "taunt bear" && !bear_moved
      puts "the bear has moved from the door."
      bear_moved = true
    elsif choice == "taunt bear" && bear_moved
      dead("the bear gets pissed and chews your leg off")
    elsif choice == "open door" && bear_moved
      gold_room
    else
      puts "i have no idea what that means."
    end
  end
end

def cthulu_room
  puts "Here you see the great evil Cthulhu."
  puts "He, it, whatever stares at you and you go insane."
  puts "Do you flee for your life or eat your head?"

  print ">"
  choice = $stdin.gets.chomp

  if choice.include? "flee"
    start
  elsif choice.include? "head"
    dead("that was tasty.")
  else
    cthulu_room
  end
end

def dead(why)
  puts why, "good job. "
  exit(0)
end

def start
  puts "youre in a dark room."
  puts "there is a door to your right and to your left"
  puts "which one do you take?"

  print ">"
  choice = $stdin.gets.chomp

  if choice == "left"
    bear_room
  elsif choice == "right"
    cthulu_room
  else
    puts "you stumble around until you starve."
  end
end

start














