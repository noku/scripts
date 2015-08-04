## FizzBuzz Array! (Custom)
[FizzBuzz Array! (Custom)](https://www.codewars.com/kata/fizzbuzz-array-custom)
Category : reference

### Description
Create a method/function that returns an array of numbers from 1 to 100.

If no arguments are passed the value at the index of the array for  number should be `'Fizz'` if it is divisible by 3, `'Buzz'` if divisible by 5, `'FizzBuzz'` if it divisible by both 3 and 5, or the number if it is not divisible by 3 or 5.

The method should take up to 4 arguments:

The first and second arguments are strings, which should be `'Fizz'` and `'Buzz'` by default.

The third and fourth arguments are integers and and should be `3` and `5` by default.

Example
```ruby
fizz_buzz_custom[15]                         # returns 16
fizz_buzz_custom[44]						 # returns "FizzBuzz" (45 is divisible by 3 and 5)
fizz_buzz_custom('Hey', 'There')[25]         # returns 26
fizz_buzz_custom('Hey', 'There')[11]         # returns "Hey" (12 is divisible by 3)
fizz_buzz_custom("What's ", "up?", 3, 7)[80] # returns "What's " (81 is divisible by 3)
```

```javascript
fizzBuzzCustom()[15]                         // returns 16
fizzBuzzCustom()[44]						 // returns "FizzBuzz" (45 is divisible by 3 and 5)
fizzBuzzCustom('Hey', 'There')[25]         // returns 26
fizzBuzzCustom('Hey', 'There')[11]         // returns "Hey" (12 is divisible by 3)
fizzBuzzCustom("What's ", "up?", 3, 7)[80] // returns "What's " (81 is divisible by 3)
```

### Tags
Fundamentals; Arrays; Data Types; Logic

- - -
