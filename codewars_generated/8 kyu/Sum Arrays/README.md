## Sum Arrays
[Sum Arrays](https://www.codewars.com/kata/sum-arrays)
Category : reference

### Description
# Sum Array

Write a method `sum` (`sum_array` in python) that takes an array of numbers and returns the sum of the numbers. These may be integers or decimals for Ruby and any instance of Num for Haskell. The numbers can also be negative. If the array does not contain any numbers then you should return 0.

## Examples

```ruby
numbers = [1, 5.2, 4, 0, -1]
puts sum(numbers)
9.2
```
```haskell
print $ sum [1, 5.2, 4, 0, -1]
> 9.2

print $ sum []
> 0
```
```coffeescript
sum [1, 5.2, 4, 0, -1]
> 9.2

sum []
> 0
```
```clojure
(println (sum [1 2 3]))
> 6
(println (sum []))
> 0
```
```python
print sum_array([1 2 3])
> 6
print sum_array([])
> 0
```


## Assumptions

* You can assume that you are only given numbers.
* You cannot assume the size of the array.
* You can assume that you do get an array and if the array is empty, return 0.

## What We're Testing

We're testing basic loops and math operations. This is for beginners who are just learning loops and math operations.

## Disclaimer

This is for beginners so we want to test basic loops and math operations. Advanced users may find this extremely easy and can easily write this in one line.

### Tags
Fundamentals; Loops; Control Flow; Basic Language Features; Arrays; Data Types

- - -
