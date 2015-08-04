## Array#reduce
[Array#reduce](https://www.codewars.com/kata/array-number-reduce)
Category : algorithms

### Description
In this kata, you must define the `Array.reduce` method.

_I have disabled the pre-existing reduce methods._

Here's how it works:
```javascript
[1,2,3].reduce( function(sum, next){return sum+next}, 0) 
// => 6

['a','b','a'].reduce( function(obj, elem){if(!obj[elem]) obj[elem] = 0; obj[elem] += 1; return obj}, {})
// => {'a':2, 'b':1}
```
```ruby
[1,2,3].reduce( ->(x,y){x+y}, 0) 
# => 6
```
```coffeescript
[1 2 3].reduce((sum, next) -> sum + next , 0)
# => 6

["a" "b" "a" ].reduce ((obj, elem) ->
  obj[elem] = 0  unless obj[elem]
  obj[elem] += 1
  obj), {}
# => {'a':2, 'b':1}
```
__Summary:__ The `reduce` method goes through each element of an array, applies the function to whatever the function returned last, and returns the last outcome. On the first iteration, it should pass the `initial` value to the function, as well as the first element of the array. If no `initial` value is passed, skip to the first element of the array.

Ruby methods should expect a lambda.

### Tags
Algorithms; Map/Reduce; Logic; Functional Programming; Declarative Programming; Programming Paradigms; Higher-order Functions; Functions; Control Flow; Basic Language Features; Fundamentals; Methods; Object-oriented Programming

- - -
