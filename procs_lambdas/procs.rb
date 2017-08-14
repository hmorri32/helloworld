# https://gist.github.com/tmikeschu/1edc0dafce76aaf51ef450cb9525989c


# procs
add = Proc.new { |arg1, arg2| arg1 + arg2 }


# Lambdas
adder = -> arg1, arg2 { arg1 + arg2 } # This is called "stabby lambda" syntax
adder = lambda { |arg1, arg2| arg1 + arg2 } # literal syntax

adder.call(1,2)
# => 3

# "do" and "end" still apply
adder = -> arg1, arg2 do
  result = arg1  + arg2
  result
end

adder.call("a", "b")
# => "ab"

# mapping
doubler = -> number { number  * 2 }
ages = [ 15, 32, 13 ]
ages.map(&doubler)
# => [ 30, 64, 26 ]


# Enumerable Power
words = ["apple", "okay", "not", "yes", "forgettable"]

def longer_than(number)
  -> word { word.length > number }
end

words.all?(&longer_than(5))
  #=> false
  
words.all?(&longer_than(2))
  #=> true
  
words.select(&longer_than(3))
  #=> ["apple", "okay", "forgettable"]
  
words.reject(&longer_than(3))
  #=> ["not", "yes"]
  
words.one?(&longer_than(5))
  #=> true

# def to find top 3 words in array
def top_3_words(text)
  text.gsub("\n", " ")
   .split(" ")
   .map(&:downcase)
   .map(&sanitize)
   .reject(&empty)
   .reject(&no_letters)
   .reduce({}, &top_word)
   .sort_by(&word_count)
   .reverse
   .take(3)
   .map(&:first)
end

def sanitize
  -> word { word.gsub( /[^a-z']+/, "") }
end


def top_word
  -> result, word do
    result[word] = (result[word] || 0) + 1
    result
  end
end

def word_count
  -> word, count { count }  
end

def empty
  -> word { word.empty? } 
end

def no_letters 
  -> word { word.scan(/[a-z]/i).length == 0 }
end

