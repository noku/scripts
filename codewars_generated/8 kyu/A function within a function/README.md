## A function within a function
[A function within a function](https://www.codewars.com/kata/a-function-within-a-function)
Category : reference

### Description
Given an input n, write a function `always` that returns a __function__ which returns n. Ruby should return a __lambda__ or a __proc__.

```javascript
var three = always(3);
three(); // returns 3
```
```coffeescript
three = always(3)
three() # returns 3
```
```ruby
three = always(3)
three.call # returns 3
```
```python
three = always(3)
three() /* returns 3 */
```
```haskell
let three = always 3
three () -- returns 3
```
```clojure
(def three (always 3))
(three) ;; returns 3
```

### Tags
Fundamentals; Closures; Basic Language Features; Scopes

- - -
