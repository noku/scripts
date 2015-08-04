## Substituting Variables Into Strings: Class Template
[Substituting Variables Into Strings: Class Template](https://www.codewars.com/kata/substituting-variables-into-strings-class-template)
Category : reference

### Description
For this kata you will complete the create_class_template method so that it returns ruby template code in the form of a string. The solution excepts two arguments that will be used as the dynamic portions of the template code. The first argument (class_name) will be used to name the class. The 2nd argument (argument_name) will be used to create an initializer with the argument name as its argument. The initializer method will also assign the argument passed in as a local variable. 

For example, if we wanted to create a "Warrior" class with a "name" initializer argument, the actual class template code would look like this:
```
class Warrior
  def initialize(name)
    @name = name
  end
end
```

The method to create this code would be called like so:

```ruby
code = create_class_template("Warrior", "name")
# code should equal (you may have to scroll)
# "class Warrior\n  def initialize(name)\n    @name = name    \n  end\nend"
```

**NOTE:** Each indent level should use two spaces

### Tags
Strings; Data Types

- - -
