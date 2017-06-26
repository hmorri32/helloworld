hairs   = ['brown', 'blond', 'red']
eyes    = ['brown', 'blue', 'green']
weights = [1, 2, 3, 4]

the_count = [1, 2, 3, 4]
fruits    = ['apples', 'oranges', 'whatevers', 'pears']
change    = [1, 'pennies', 'dimes', 3, 'quarters']

the_count.each do |num|
  puts "this is count #{num}"
end

fruits.each do |fruit|
  puts "fruit of type #{fruit}"
end

change.each {|thing| puts "i have #{thing}"}

elements = []

(0..5).each do |i|
  puts "adding #{i} to dis list"
  elements.push(i)
end

elements.each {|i| puts "element #{i}"}

