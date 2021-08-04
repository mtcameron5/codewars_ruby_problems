array = [1, 2, 3, 4, 5]

array.select do |num| 
  puts num if num.odd?
end

# What does the following code return? What does it output? Why? What concept does it demonstrate?

# The following code returns an empty array and outputs integer objects `1`, `3`, and `5`. 

# The `select` method is invoked on variable `array` and is passed a do..end block defined on 
# lines 3-5 with one parameter, `num`. `num` references an element in the array.

# An empty array is returned because the select method places the object it is iterating over in the
# returned array only if the return value of the block is truthy. Nil is the evaluated result of the last 
# line in the block for all 5 elements. If the object referenced by `num` is odd, then the method
# `puts` is invoked and passed the variable `num`. This will output the element and return `nil`.
#  If num is not odd, nothing happens, but `nil` is still returned. 

# This concept demonstrates that the select method only places the object it is iterating over in the
# returned array if the return value of the block is truthy, and in this code sample nil is always
# the evaluated result of the last line of the block, so the array returned is empty.




