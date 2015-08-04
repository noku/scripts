## Return substring instance count - 2
[Return substring instance count - 2](https://www.codewars.com/kata/return-substring-instance-count-2)
Category : algorithms

### Description
Complete the solution so that it returns the number of times the search_text is found within the full_text.

```ruby
search_substr( fullText, searchText, allowOverlap = true )
```
```coffeescript
searchSubstr( fullText, searchText, allowOverlap = true )
```
```javascript
searchSubstr( fullText, searchText, allowOverlap = true )
```

so that overlapping solutions are (not) counted. If the searchText is empty, it should return "0". Usage examples:

```ruby
search_substr('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
search_substr('aaabbbcccc', 'bbb') # should return 1
search_substr( 'aaa', 'aa' ) # should return 2
search_substr( 'aaa', '' ) # should return 0
search_substr( 'aaa', 'aa', false ) # should return 1
```
```coffeescript
searchSubstr('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
searchSubstr('aaabbbcccc', 'bbb') # should return 1
searchSubstr( 'aaa', 'aa' ) # should return 2
searchSubstr( 'aaa', '' ) # should return 0
searchSubstr( 'aaa', 'aa', false ) # should return 1
```
```javascript
searchSubstr('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
searchSubstr('aaabbbcccc', 'bbb') # should return 1
searchSubstr( 'aaa', 'aa' ) # should return 2
searchSubstr( 'aaa', '' ) # should return 0
searchSubstr( 'aaa', 'aa', false ) # should return 1
```

### Tags
Algorithms; Strings; Data Types; Regular Expressions; Declarative Programming; Advanced Language Features; Programming Paradigms; Fundamentals; Search; Logic

- - -
