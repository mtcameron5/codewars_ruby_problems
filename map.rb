words = %w(jump trip laugh run talk)

new_array = words.map do |word|
  word.start_with?("t")
end

p new_array

# What does the following code return? What does it output? 
# Why? What concept does it demonstrate?

# The following code returns and outputs the array `[false, true, false, false, true]`

# An array of booleans is returned because the `String#start_with?(str)` 
# method returns a boolean value,
# and the `map` method places the return value of the block 
# passed to it in the array `map` returns.

# The code sample demonstrates the concept that the `map` method is a transformative method. The
# values in the array returned from invoking the `map` method are the result of the return value
# of the block passed to the `map` method.
