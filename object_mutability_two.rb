def fix(value)
  value = value.upcase 
  value.concat('!')
end

s = 'hello'
t = fix(s)

p s 
p t
# After running the code the variable `s` points to the string object `'hello'`
# and the variable `t` points to string object `'HELLO!'`

# On line 6 variable `s` is initialized and assigned to the string object `hello`.
# The method `fix` is called on `line 7` and passed the string object referenced by variable `s`.
# The variable `value` now points to the same object as variable s

# ON line 2, within of the method `fix` value is reassigned to value.upcase, so value now points
# to the string object `HELLO`. It is worth noting that because of value being reassigned 
# `s` still points to `hello` while value now pointss to `HELLO`. This reassignment is why `s`
# continues to reference string object `hello`.

# On line 3 concat is invoked on the object variable `value` references, which mutates the object and
# changes its value to `HELLO!`. So value now points to `HELLO!`. This is the last line of the method
# and `HELLO!` is implicitly returned, so on line 7 `t` is initialized and assigned to the string object 
# `HELLO!`. 

# This code sample demonstrates object mutability, specifically that through reassignment and
# the use of a non-destructive method the method `fix` functions 

# This code example demonstrates the concept of object mutability, particularly that `upcase!` and 
# `concat` are destructive methods that mutate the calling object. 


# What does the following code return? What does it output? Why? What concept does it demonstrate?

def fix(value)
  value << 'xyz'
  value = value.upcase 
  value.concat('!')
end

s = 'hello'
t = fix(s)

p s, t

# The `fix` method returns the string object 'HELLOXYZ!'. Variable `s` references the string
# object `helloxyz` and variable t references the string object `HELLOXYZ!`, so these
# are what are output.

# On line 44 method `fix` is called and passed the string object `hello` which variable `s` references.
# Within the `fix` method parameter `value` now references the string object `hello`. On line 38 
# the `<<` method is called on string object `hello`. `<<` is a destructive method and variable `value` 
# now references the string object `helloxyz`, as does variable `s`. On line 39 variable `value` is reassigned
# to the return value of `value.upcase` which is `HELLOXYZ`. Because of reassignment variable `value`
# and variable `s` no longer point to the same space in memory.

# On line 40 method `concat`is called on variable `value` and passed the string `!`, which evaluates to
# the string object `HELLOXYZ!`. This is the last line of the method so this value is implicitly 
# returned. 

# Variable `t` is assigned to the string `HELLOXYZ!` while variable `s` now references string
# object `helloxyz`. 

# This code sample demonstrates that the object passed to a method  
# can be mutated within the method, but only if the destructive method call is on 
# the same object passed to the method.
# Thus `value << 'xyz'` mutates the object variable `s` references, while `value.concat('!') does not`,
# as described above

