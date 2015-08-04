## Series
[Series](https://www.codewars.com/kata/series)
Category : algorithms

### Description
# Series

Write a program that will take a string of digits and give you all the possible consecutive number series of length `n` in that string.

For example, the string "01234" has the following 2-digit series:

* [0, 1]
* [1, 2]
* [2, 3]
* [3, 4]

```ruby
series_slices("01234",2)
# => [[0, 1], [1, 2], [2, 3], [3, 4]]
```

And the following 4-digit series:

* [0, 1, 2, 3]
* [1, 2, 3, 4]


```ruby
series_slices("01234",4)
# => [[0, 1, 2, 3], [1, 2, 3, 4]]
```

And if n is larger than the length of the string, an error should be raised.

### Tags
Algorithms; Logic; Data Structures

- - -
