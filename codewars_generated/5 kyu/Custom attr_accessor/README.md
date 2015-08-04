## Custom attr_accessor
[Custom attr_accessor](https://www.codewars.com/kata/custom-attr-accessor)
Category : refactoring

### Description
Some time ago, you wrote the class ```SuperFoo```.  It has only one attribute, ```data```, which is initialized as a hash:
```ruby
class SuperFoo
  attr_accessor :data

  def initialize
    @data = {}
  end
end
```
Naturally, you put things into the hash from time to time:
```
super_foo = SuperFoo.new
super_foo.data[:buzz] = "BUZZ"
super_foo.data[:buzz]
#=> "BUZZ"
```
But then you got tired of typing hash things, and made some getters and setters to make accessing ```data``` easier.
```ruby
class SuperFoo

  attr_accessor :data

  def initialize
    @data = {}
  end

  def buzz
    @data[:buzz]
  end

  def buzz=(value)
    @data[:buzz] = value
  end

end

super_foo = SuperFoo.new
super_foo.buzz = "BUZZ"
super_foo.buzz
#=> "BUZZ"
```
That was nice for a while. But now, you have been tasked with making literally dozens of classes that inherit from ```SuperFoo```, each of which will have their own unique variables that will be stored in the ```data``` hash.  You shudder at the thought of writing your getter and setter methods over and over again, especially because you hate repeating code.

You figure there has to be a way to dynamically generate these methods...

Well, there is!

In this kata, you must write a class-level method called ```data_accessor```. It will define your "data getters and setters" for all names you pass to it. 

Basically, you are defining a custom ```attr_accessor``` method, which will let you do this:
```ruby
class SubFoo  "FIZZ"

sub_foo.pi = 3.14
sub_foo.pi
#=> 3.14

sub_foo.data
#=> {:fizz => "FIZZ", :pi => 3.14}

sub_foo.instance_variables
#=> [:@data]
```

### Tags
Refactoring; Metaprogramming; Programming Paradigms; Advanced Language Features; Fundamentals

- - -
