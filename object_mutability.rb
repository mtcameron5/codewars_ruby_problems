def fix(value)
  value.upcase!
  value.concat('!')
  value 
end 

s = 'hello'
t = fix(s)

p s 
p t 

# What does the following code return? What does it output? Why? What concept does
# it demonstrate

# After running the code the method call `fix('hello')` returns `'HELLO!'`. `puts(s)`` outputs `HELLO!`
# and `puts t` also outputs `HELLO!`

# On line 7 variable `s` is initialized and assigned to the string object `hello`.
# The method `fix` is called on `line 8` and passed the string object `hello` referenced by variable `s`.

# Within the method, the variable `value` now points to the string object `'hello'`.
# On line 2 of the method `upcase!` is called on `value` which mutates the value variable `value` 
# points to and upcases its letters. Variable `s` and variable `value` now point to string object 
#  `'HELLO'`
# On line 3 method `concat` is invoked on variable `value` and passed the string object `!`
#  which concatenates `!` to the end of the variable `value`. `concat` mutates the value variable 
# `value` and variable `s` points to. These two variables now point to string object `HELLO!`
# On line 4 variable `value` evaluates to `HELLO!` which is implicitly returned.

# This code sample demonstrates that an object passed to a method can be mutated within that method.


