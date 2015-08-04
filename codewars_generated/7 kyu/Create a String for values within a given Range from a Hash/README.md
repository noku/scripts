## Create a String for values within a given Range from a Hash
[Create a String for values within a given Range from a Hash](https://www.codewars.com/kata/create-a-string-for-values-within-a-given-range-from-a-hash)
Category : reference

### Description
Complete the solution so that it returns a String in the format:


"Key (Value), Key (Value)"

From a hash for values within the given range, sorted by value lowest to highest.

For example:
```ruby
food = {
  "Hamburger"=>1.99,
  "Cheese"=>0.99,
  "Steak"=>4.99,
  "Lobster"=>7.99,
  "Fries"=>1.49,
  "Sandwich"=>2.49
}

list_in_range(food, (0.99..1.99)) # should return "Cheese (0.99), Fries (1.49), Hamburger (1.99)"
```
or
```ruby
list_in_range({"Zero"=>0, "Three"=>3, "One"=>1, "Eleven"=>11}, (1..10)) # should return "One (1), Three (3)"
```

### Tags
Fundamentals; Sorting; Algorithms; Logic; Mapping; Filtering; Ranges; Basic Language Features

- - -
