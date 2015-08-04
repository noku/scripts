## Ninja vs Samurai: Strike
[Ninja vs Samurai: Strike](https://www.codewars.com/kata/ninja-vs-samurai-strike)
Category : bug_fixes

### Description
Something is wrong with our Warrior class. The strike method does not work correctly. The following shows an example of this code being used:

```javascript
var ninja = new Warrior('Ninja');
var samurai = new Warrior('Samurai');

samurai.strike(ninja, 3);
// ninja.health should == 70
```
```coffeescript
ninja = new Warrior('Ninja')
samurai = new Warrior('Samurai')

samurai.strike(ninja, 3)
# ninja.health should == 70
```
```python
ninja = Warrior('Ninja')
samurai = Warrior('Samurai')

samurai.strike(ninja, 3)
# ninja.health should == 70
```
```ruby
ninja = Warrior.new('Ninja')
samurai = Warrior.new('Samurai')

samurai.strike(ninja, 3)
# ninja.health should == 70
```

Can you figure out what is wrong?

### Tags
Bugs; Prototype-based Programming; Programming Paradigms; Prototypes

- - -
