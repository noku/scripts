## A String of Sorts
[A String of Sorts](https://www.codewars.com/kata/a-string-of-sorts)
Category : algorithms

### Description
Define a method that accepts 2 strings as parameters. The method returns the first string sorted by second.

```ruby
sort_string('foos', 'of')
# => 'oofs'

sort_string('string', 'gnirts')
# => 'gnirts'

sort_string('banana', 'abn')
# => 'aaabnn'
```

To elaborate, the second parameter defines the ordering. It is possible that the second parameter characters repeat, so you should remove repeating characters, leaving only the first occurrence.

Any character that does not appear in the second parameter should be sorted to the end of the result in the same order they appear in the ordering string.

### Tags
Algorithms; Strings; Data Types; Sorting; Logic

- - -
