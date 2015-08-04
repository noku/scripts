## Metaprogramming Conjurer
[Metaprogramming Conjurer](https://www.codewars.com/kata/metaprogramming-conjurer)
Category : reference

### Description
Define a class `Conjurer` with a class method `conjure` that takes two mandatory parameters: name and lambda.

When called, it should define a new instance method in the `Conjurer` class with the method name equal to the name parameter, and with the method body equal to the lambda.

```ruby
Conjurer.conjure(:one_through_five, ->{(1..5).to_a})
Conjurer.new.one_through_five 
# => [1, 2, 3, 4, 5] 
```

### Tags
Fundamentals; Metaprogramming; Programming Paradigms; Advanced Language Features; Lambdas; Functional Programming; Functions; Declarative Programming; Control Flow; Basic Language Features

- - -
