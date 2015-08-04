## Naughty or Nice?
[Naughty or Nice?](https://www.codewars.com/kata/naughty-or-nice)
Category : reference

### Description
## Happy Holidays fellow Code Warriors!
It's almost Christmas! That means Santa's making his list, and checking it twice. Unfortunately, Santa's Javascript and CoffeeScript  Elves accidentally mixed the Naughty and Nice list together! Santa needs your help to save Christmas!

## Save Christmas!
Santa needs you to write two functions, `getNiceNames` and `getNaughtyNames`. Both of the functions accept an array of objects. `getNiceNames` returns an array containing only the names of the nice people, and `getNaughtyNames` returns an array containing only the names of the naughty people. Return an empty array `[]` if the result from either of the functions contains no names.

The objects in the passed in array will represent people. Each object contains two properties: `name` and `wasNice`.


`name` - The name of the person


`wasNice` - True if the person was nice this year, false if they were naughty

## Person Object Examples
### JavaScript
```javascript
  { name: 'Warrior reading this kata', wasNice: true }
  { name: 'xDranik', wasNice: false }
```
### Haskell
In Haskell, a `Warrior` is simply a tuple `(String, Bool)`:
```haskell
type Warrior = (String, Bool)

example = ("Warrior reading this kata", True)
```

## Test Examples
```javascript
    getNiceNames( [
        { name: 'Warrior reading this kata', wasNice: true },
        { name: 'xDranik', wasNice: false },
        { name: 'Santa', wasNice: true }
    ] )
    // => returns [ 'Warrior reading this kata', 'Santa' ]

    getNaughtyNames( [
        { name: 'Warrior reading this kata', wasNice: true },
        { name: 'xDranik', wasNice: false },
        { name: 'Santa', wasNice: true }
    ] )
    // => returns [ 'xDranik' ]
```
```haskell
warriors = [
    ("xDranik",                   False),
    ("Santa",                     True), 
    ("Warrior reading this kata", True)
  ]
getNiceNames    warriors == ["Santa", "Warrior reading this kata"]
getNaughtyNames warriors == ["xDranik"]
```

### Tags
Fundamentals; Hacking Holidays; Arrays; Data Types

- - -
