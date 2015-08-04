## Bag#every?
[Bag#every?](https://www.codewars.com/kata/bag-number-every)
Category : reference

### Description
We have an awesome, custom collection class, *Bag*, which already has implemented an *#each* for traversing its items and *#count* for counting the items. New requirements come in for the project to check arbitrary conditions regarding data inside of a *Bag*.

We were just about to break out the trusty old *#each* hammer, when we realize there might be an better/easier/cleaner way. Spotting an abstraction waiting to happen, we decide implement a new method, *#every?*, to make sure that every item in a *Bag* matches the condition.

The *#every?* method needs to receive a block to run some test against every item. If *every* test passes, it returns true. If any of the tests fail, it returns false. Empty bags should pass all tests.

It also has a shorthand variation for our lazy friends. If you do not pass a block to *#every*, it tests the truthiness of the items themselves.

Examples:

```ruby
bag = Bag.new(:surefire, :tests)
bag.every? { true } # => true
bag.every? { false } # => false

bag = Bag.new(1,2,3,4)
bag.every? { |num| num > 0 } # => true
bag.every? { |num| num.odd? } # => false

bag = Bag.new(:code, :wars)
bag.every? # => true

bag = Bag.new(:cat, :+, :roomba, nil, :profit!)
bag.every? # => false
```

### Tags
Fundamentals; Lambdas; Functional Programming; Functions; Declarative Programming; Programming Paradigms; Control Flow; Basic Language Features

- - -
