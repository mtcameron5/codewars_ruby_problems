array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array.each do |num|
  puts num if num > 5
end
array.push(12)

p array

# prepend 0 to beginning of array
array = [0] + array
# alternatively array.unshift(0)

# remove the 12, and append a 3
array.pop
array.push(3)
p (array)

array.uniq!
p array

# extract all odd numbers into new array
odd_numbers_of_array = array.select do |num|
  num.odd?
end

p odd_numbers_of_array