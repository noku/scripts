## Function Composition
[Function Composition](https://www.codewars.com/kata/function-composition)
Category : reference

### Description
__Function composition__ is a mathematical operation that mainly presents itself in lambda calculus and computability. It is explained well [here](http://www.mathsisfun.com/sets/functions-composition.html), but this is my explanation, in simple mathematical notation:

```
f3 = compose( f1 f2 )
   Is equivalent to...
f3(a) = f1( f2( a ) )
```

Your task is to create a `compose` function to carry out this task, which will be passed two functions or lambdas. Ruby functions will be passed, and should return, either a proc or a lambda. Remember that the resulting composed function may be passed multiple arguments!

```javascript
compose(f , g)(x)
=> f( g( x ) )
```
```ruby
compose(f , g).(x)
=> f.( g.( x ) )
```
```coffeescript
compose(f , g)(x)
=> f( g( x ) )
```
```clojure
((compose f  g) x)
=> (f (g x) )
```
```python
compose(f , g)(x)
=> f( g( x ) )
```


This kata is not available in haskell; that would be too easy!

### Tags
Fundamentals; Functional Programming; Declarative Programming; Programming Paradigms; Higher-order Functions; Functions; Control Flow; Basic Language Features; Lambdas; Composition; Design Principles

- - -
