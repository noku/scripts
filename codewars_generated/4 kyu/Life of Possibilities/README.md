## Life of Possibilities
[Life of Possibilities](https://www.codewars.com/kata/life-of-possibilities)
Category : algorithms

### Description
Given a map of words and their translations, generate a list of all possible unique combinations of translations, sorted lexically.

For example, given the map of words:
```ruby
words = {
  life:   %w{ vida vie Leben },
  death:  %w{ muerte mort Tode }
}
```
The method should return the result:
```ruby
 {
  life: [
    ['Leben'],
    ['Leben', 'vida'],
    ['Leben', 'vida', 'vie'],
    ['Leben', 'vie'],
    ['vida'],
    ['vida', 'vie'],
    ['vie']
  ],
  death: [
    ['Tode'],
    ['Tode', 'mort'],
    ['Tode', 'mort', 'muerte'],
    ['Tode', 'muerte'],
    ['mort'],
    ['mort', 'muerte'],
    ['muerte']
  ]
}
```

### Tags
Algorithms; Mapping; Logic

- - -
