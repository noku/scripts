## Unpacking Arguments
[Unpacking Arguments](https://www.codewars.com/kata/unpacking-arguments)
Category : reference

### Description
You must create a function, `spread`, that takes a function and a list of arguments to be applied to that function. You must make this function return the result of calling the given function/lambda with the given arguments.

eg:
```javascript
spread(someFunction, [1, true, "Foo", "bar"] ) 
// is the same as...
someFunction(1, true, "Foo", "bar")
```
```clojure
(spread someFunction [1 true "Foo" "bar"] ) 
; is the same as...
(someFunction 1 true "Foo" "bar")
```
```coffeescript
spread someFunction, [1, true, "Foo", "bar"] 
# is the same as...
someFunction 1, true, "Foo", "bar" 
```
```python
spread(someFunction, [1, true, "Foo", "bar"] ) 
# is the same as...
someFunction(1, true, "Foo", "bar")
```
```ruby
spread someFunction, [1, true, "Foo", "bar"] 
# is the same as...
someFunction.(1, true, "Foo", "bar")
```

### Tags
Fundamentals; Arguments; Basic Language Features; Declarative Programming; Programming Paradigms; Functions; Control Flow; Lambdas; Functional Programming; Higher-order Functions

- - -
