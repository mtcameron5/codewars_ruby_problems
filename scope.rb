# a = 5

# 3.times do |n|
#   a = 3
# end

# p a

# def greetings(str)
#   puts "Goodbye"
# end

# word = 'Hello'

# greetings(word)

# Example 3 block not executed
def greetings 
  puts "Goodbye"
end

word = "Hello"

greetings do 
  puts word 
end 

# Example 4 block executed
def greetings 
  yield 
  puts "Goodbye"
end

word = "Hello"

greetings do 
  puts word 
end   



