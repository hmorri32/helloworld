input_file = ARGV.first

def print_all(f)
  puts f.read
end

def rewind(f)
  puts f.seek(0)
end

def print_line(line_count, f)
  puts "#{line_count}, #{f.gets.chomp}"
end

current_file = open(input_file)

puts "First print this whole file:\n"

print_all(current_file)

puts "rewind"

rewind(current_file)

puts "Let's print three lines:"

current_line = 1
print_line(current_line, current_file)

current_line = current_line + 1
print_line(current_line, current_file)

current_line = current_line + 1
print_line(current_line, current_file)