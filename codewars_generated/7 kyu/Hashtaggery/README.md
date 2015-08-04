## Hashtaggery
[Hashtaggery](https://www.codewars.com/kata/hashtaggery)
Category : reference

### Description
Define a new instance method on the Ruby `string` class called `hashtags`.

It returns an array of all alphanumeric hashtagged words in a string. A string with no hashtagged words should return an empty array.

Character case sensitivity is not important in this kata.

```ruby
'this #word is #hashtagged'.hashtags
# => ['#word', '#hashtagged']
```

A string with words with underscores can still be considered a hashtag.

```ruby
'this #word_is hashtagged'.hashtags
# => ['#word_is']
```

A single hashtag should not be considered a hashtagged word.

```ruby
'# this #word is hashtagged'
# => ['#word']
```

### Tags
Fundamentals; Regular Expressions; Declarative Programming; Advanced Language Features; Programming Paradigms; Strings; Data Types; Parsing; Algorithms; Logic

- - -
