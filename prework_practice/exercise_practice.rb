puts "Turing"
puts "Turing"[0]
puts "Turing".upcase
puts "Turing".length
puts "Turing".delete("n")
turing = "Turing"
puts turing


puts "What is your first name?"
first_name = gets
puts first_name

puts "What is your last name?"
last_name = gets.chomp
puts last_name

puts "What is your favorite number?"
fav_num = gets
puts fav_num
puts fav_num.to_i


animals = ["dog", "cat", "penguin", "armadillo"]
puts animals

answer_1 = animals.length
puts answer_1

answer_2 = animals[0]
puts answer_2

answer_3 = animals.empty?
puts answer_3

animals.push("hippo")
puts animals

animals.pop
puts animals