## Sherlock on numbers
[Sherlock on numbers](https://www.codewars.com/kata/sherlock-on-numbers)
Category : algorithms

### Description
Sherlock has to find suspect on his latest case. He will use your method, dear Watson. The suspect in this case is a number which is most unique in given set, e.g.:

- has least (minimum) occurences in set 
- and no other number has the same occurences count

Write method which helps Sherlock to find suspect from given set of numbers. If no suspect is found the method should return nil.


```ruby
find_suspect(1, 2, 3, 4, 2, 2, 1, 4, 4) # => 3
find_suspect(1, 1, 2, 2) # => nil
find_suspect(1, 1, 2, 2, 2) # => 1
find_suspect(1, 2, 3, 4, 4, 3) # => nil
```

### Tags
Algorithms; Numbers; Data Types; Integers; Arrays

- - -
