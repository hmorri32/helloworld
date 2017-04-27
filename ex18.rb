
def print_two_again(arg1, arg2)
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

def print_one(arg1)
  puts "arg1: #{arg1}"
end

def print_two(arg2)
  puts "arg2: #{arg2}"
end

def print_none()
  puts "nothing here"
end

print_two_again("what is up","man")
print_one("first")
print_none()