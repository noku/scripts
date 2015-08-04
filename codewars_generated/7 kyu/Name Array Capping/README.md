## Name Array Capping
[Name Array Capping](https://www.codewars.com/kata/name-array-capping)
Category : reference

### Description
Create a method that accepts an array of names, and returns an array of each name with its first letter capitalized.

example
```ruby
cap_me(['jo', 'nelson', 'jurie']) # returns ['Jo', 'Nelson', 'Jurie']
cap_me(['KARLY', 'DANIEL', 'KELSEY']) # returns ['Karly', 'Daniel', 'Kelsey']
```
```javascript
capMe(['jo', 'nelson', 'jurie'])     // returns ['Jo', 'Nelson', 'Jurie']
capMe(['KARLY', 'DANIEL', 'KELSEY']) // returns ['Karly', 'Daniel', 'Kelsey']
```
```haskell
capMe ["jo", "nelson", "jurie"] `shouldBe` ["Jo","Nelson","Jurie"]
capMe ["JO", "NELSON", "JURIE"] `shouldBe` ["Jo","Nelson","Jurie"]
```
```csharp
Kata.CapMe([new string[]{"jo", "nelson", "jurie"}) // returns string[]{"Jo", "Nelson", "Jurie"}
Kata.CapMe([new string[]{"KARLY", "DANIEL", "KELSEY"}) // returns string[]{"Karly", "Daniel", "Kelsey"}
```

### Tags
Fundamentals; Strings; Data Types; Arrays; Utilities

- - -
