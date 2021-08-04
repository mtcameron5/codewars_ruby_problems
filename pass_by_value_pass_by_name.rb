# Pass by value
def change_name(name)
  name = 'bob'
end

name = 'jim'
change_name(name)
puts name

# Pass by reference
def cap(str)
  str.capitalize!
end

name = "jim"
cap(name)
puts name 