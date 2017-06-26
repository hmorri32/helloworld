def some_food(count, boxes)
  puts "you have #{count} stuffs"
  puts "you have #{boxes} boxes"
  puts "super neato"
  puts "whatever town \n"
end

puts "We can just give the function numbers directly:"
some_food(20, 30)

puts "OR, we can use variables from our script:"
count = 10
boxes = 50
some_food(count, boxes)

puts "We can even do math inside too:"
some_food(10 + 20, 5 + 6)

puts "And we can combine the two, variables and math:"
some_food(count + 100, boxes + 1000)
