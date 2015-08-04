## Custom Enumerators - Fibonacci
[Custom Enumerators - Fibonacci](https://www.codewars.com/kata/custom-enumerators-fibonacci)
Category : reference

### Description
Ruby has very powerful [enumerator](http://ruby-doc.org/core-1.9.3/Enumerator.html) [support](http://ruby-doc.org/core-1.9.3/Enumerable.html), including the ability to create your own custom enumerators on the fly. 

``` ruby
digits = Enumerator.new do |y|
  i = 0
  loop do
    y.yield i
    i += 1
  end
end

digits.next # => 0
digits.next # => 1

digits.take_while {|n| n  [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12] 
```

Create an enumerator "fib" that outputs successive [fibonacci numbers](http://en.wikipedia.org/wiki/Fibonacci_number).

For example:

``` ruby
fib.next # => 1
fib.next # => 1
fib.next # => 2

fib.take_while {|n| n  [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89] 
```

** NOTE: The first value returned from the enumerator will be 1, not 0**

### Tags
Fundamentals; Iterators; Control Flow; Object-oriented Programming; Basic Language Features; Programming Paradigms

- - -
