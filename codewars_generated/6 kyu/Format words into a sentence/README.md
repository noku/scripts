## Format words into a sentence
[Format words into a sentence](https://www.codewars.com/kata/format-words-into-a-sentence)
Category : algorithms

### Description
Complete the method so that it formats the words into a single comma separated value. The last word should be separated by the word 'and' instead of a comma. The method takes in an array of strings and returns a single formatted string. Empty string values should be ignored. Empty arrays or null/nil values being passed into the method should result in an empty string being returned. 

```javascript
formatWords(['ninja', 'samurai', 'ronin']) // should return "ninja, samurai and ronin"
formatWords(['ninja', '', 'ronin']) // should return "ninja and ronin"
formatWords([]) // should return ""
```
```coffeescript
formatWords(['ninja', 'samurai', 'ronin']) # should return "ninja, samurai and ronin"
formatWords(['ninja', '', 'ronin']) # should return "ninja and ronin"
formatWords([]) # should return ""
```

```ruby
format_words(['ninja', 'samurai', 'ronin']) # should return "ninja, samurai and ronin"
format_words(['ninja', '', 'ronin']) # should return "ninja and ronin"
format_words([]) # should return ""
```

### Tags
Algorithms; Utilities; Formatting; Logic; Strings; Data Types

- - -
