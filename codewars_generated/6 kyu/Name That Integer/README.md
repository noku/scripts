## Name That Integer
[Name That Integer](https://www.codewars.com/kata/name-that-integer)
Category : reference

### Description
Write a method 
detect_int that returns the first positive integer for which an arbitrary number of lambdas returns true. If no arguments are passed in, then 
detect_int should return 
1.

For example:lam1 = lambda { |x| x > 9 }
lam2 = lambda { |x| x**0.5 % 1 == 0 }

detect_int
  # => 1
detect_int lam1
  # => 10
detect_int lam2
  # => 1
detect_int lam1, lam2
  # => 16

The testing rubric will never ask for a number that does not exist, e.g., 
detect_int(lambda { |x| x.odd? }, lambda { |x| x.even? }).

Note that loops constructed using the 
loop { block } syntax are limited to 5000 iterations, but solutions will not be constrained to integers less than 5000.

### Tags
Fundamentals; Lambdas; Functional Programming; Functions; Declarative Programming; Programming Paradigms; Control Flow; Basic Language Features

- - -
