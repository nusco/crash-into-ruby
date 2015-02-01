# - modules

module MyModule
  def m1
    "m1()"
  end
end

class MyClass < String
  include MyModule
  
  def m2
    "m2()"
  end
end

obj = MyClass.new("abc")
obj.m1  # => "m1()"
obj.m2  # => "m2()"

MyClass.ancestors # => [MyClass, MyModule, String, Enumerable, Comparable, Object, Kernel]
MyClass.ancestors.map {|a| "#{a} is a #{a.class}" } # => ["MyClass is a Class", "MyModule is a Module", "String is a Class", "Enumerable is a Module", "Comparable is a Module", "Object is a Class", "Kernel is a Module"]

# self

class SomeClass
  def greetings
    "Hello! I am #{self}"
  end
end

obj = SomeClass.new # => #<SomeClass:0x1061994f0>
obj.greetings     # => "Hello! I am #<SomeClass:0x1061994f0>"

# the top level

self            # => main
self.class      # => Object
# show Kernel.instance_methods.sort
# show Kernel.private_instance_methods.sort
self.private_methods.grep(/^pu/) # => ["putc", "puts"]
puts "Hello, world!"

# >> Hello, world!
