# Write a method that takes any integer greater than or equal to 0,
# and returns that number correctly seperated by commas.
# This documentation may be useful: https://ruby-doc.org/core-3.0.2/Enumerable.html#method-i-each_slice
# Test cases:


# Problem: Format the number with appropriate commas based on value of number
# Examples: 

# Data structure: 


def seperator(num)
  num_string = num.to_s
  num_integer_count = num.to_s.length
  num_counter = num_integer_count
  loop do 
    num_counter -= 3
    if num_counter <= 0 
      break 
    else 
      num_string.insert(num_counter, ',')
    end

  end
  num_string
end

puts(seperator(1000) == '1,000')
puts(seperator(100) == '100')
puts(seperator(990999) == '990,999')
 puts(seperator(98) == '98')
puts(seperator(2043) == '2,043')
puts(seperator(20433) == '20,433')



# Methods used: each_slice

# (1..10).each_slice(3) { |a| p a }
# # outputs below
# [1, 2, 3]
# [4, 5, 6]
# [7, 8, 9]
# [10]
