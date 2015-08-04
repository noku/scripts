## Power of two
[Power of two](https://www.codewars.com/kata/power-of-two)
Category : reference

### Description
Write a function that determines if given number is a power of two.
A [power of two](https://en.wikipedia.org/wiki/Power_of_two) means a number of the form 2^n where *n* is an integer, i.e. the result of exponentiation with number two as the base and integer n as the exponent.
I.e. 1024 is a power of two: it 2^10.


```ruby
power_of_two?(4096) # true

power_of_two?(333) # false
```
```python
power_of_two(4096) # true

power_of_two(333) # false
```
```javascript
isPowerOfTwo(4096) // -> true

isPowerOfTwo(333)  // -> false
```
```haskell
isPowerOfTwo       1 `shouldBe` True
isPowerOfTwo       2 `shouldBe` True
isPowerOfTwo       6 `shouldBe` False
isPowerOfTwo       8 `shouldBe` True
isPowerOfTwo    1024 `shouldBe` True
isPowerOfTwo    1026 `shouldBe` False
```

Pay attention: hidden tests are using extremmely big numbers

### Tags
Fundamentals; Mathematics; Algorithms; Logic; Numbers

- - -
