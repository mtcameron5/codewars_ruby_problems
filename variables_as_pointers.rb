a = "hi there"
b = a
a << ", Bob"

# This code results in variable `a` and variable `b` both pointing to the string object `hi there, Bob`.

# On line 1 variable `a` is initialized and passed the string object `hi there`. On line 2 variable 
# `b` is initialized and passed the string object `a` references, which is `hi there`.  
# variable `a` and variable `b` point to the same object. ON line `3` the `<<` method is called on the
# object `hi there` which variable `a` references, and passed the string object `, Bob` which appends
# `, Bob` to the string object. Because the `<<` method is destructive, variable `a` and variable `b` 
# point to the string object `hi there, Bob`.


# This code demonstrates variables are pointers and destructive methods.

# ["ab", "d", "aaa", "b", "aa"].sort # => ["aa", "aaa", "ab", "b", "d"]

# Examine the order of the strings in the two arrays below (the array on which #sort 
# is called and the one returned by the method call). What is the underlying principle 
# by which the order in the returned array was determined, and precisely how is that 
# principle implemented?

# When sort is called on this array of string objects, one string object is always being compared with
# another string object. If the first character in the string object has a lower ASCII value than the first
# character of the string object it's being compared with, then the string object with the lower ASCII value
# will come before the string object it's being compared with. If the first characters of each string 
# object have the same ASCII value, then the second character is compared, and so on until the end of the
# string. If the two string objects have matching values (and therefore ASCII values) for the characters
# then the one that is longer would come after the one that is shorter in the returned array. For example,
# `aaa` would come after `aa` in the returned array. 

# The checks described above can be achieved with the method `str_obj_one <=> str_obj_two`
# A value of -1 is returned if the first string object comes before the second string object,
# a value of `0` is returned if the first string object and the second string object are equal and do not change, 
# and a value of 1 indiciates that the first string object comes after the second string object.


#  Zayne
# sort compares each element in an array with <=> where in the first value in this comparison is compared to the next. The return of <=> is -1 when the first element is less than the second, 0 when they are equal, and 1 when it is greater than the second. sort by default sorts objects within arrays in an ascending order based on the return of <=>.
# The sort method handles string objects ascii-betically. Meaning that characters are given values based upon their position on the ascii table. 
# On top of sorting ascii-betically, sort looks at the first character in the string to compare, if they are the same, it iterates over each character until one is different and those are compared. If strings are identical up until one having an extra character(s), the longer string is considered to have the larger value.
# That is why we see the return array going in order from "aa" to "d".