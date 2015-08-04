## Does array x contain all values within array  y?
[Does array x contain all values within array  y?](https://www.codewars.com/kata/does-array-x-contain-all-values-within-array-y)
Category : reference

### Description
We want to extend the array class so that it provides a contains_all? method. This method will always assume that an array is passed in and will return true if all values within the passed in array are present within the current array. 

For example:

```ruby
items = [1, 2, 3, 4, 5, 6, 7, 8, 9]

items.contains_all?([1, 2, 3]) # should == true
items.contains_all?([1, 5, 13]) # should == false because 13 is not within the items array
```

### Tags
Fundamentals; Arrays; Data Types

- - -
