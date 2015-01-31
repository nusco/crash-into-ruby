# I will be slow, so experiment
# Ask questions!

# start irb (and what it is)

1 + 1 # => 2

# define variables

a = 1
b = 2
a + b # => 2

# first difference with Java/C#: no type declarations

# hello, world
# how would you do it?
# (print() vs puts())

puts "Hello, world!"  # => nil

# string quotes

born = 1969
puts "Happy #{Time.now.year - born}th birthday!"
puts 'Happy #{Time.now.year - born}th birthday!'

# strings are objects

"abc".reverse()
"abc".reverse

# constants
S = "xyz"
S = "xyzzy" # !> already initialized constant S

# functions

puts("Hello, world!")

def f()
  puts("Hello, world!")
end

f()   # => nil
f     # => nil

def hello(name)
  result =  "Hello, #{name}!"
  return result
end

hello("world")  # => "Hello, world!"

def hello(name) # !> method redefined; discarding old hello
  "Hello, #{name}!"
end

hello("world")  # => "Hello, world!"

# why am I so repetitive?
# we "learn from our hands"

# if

def hello(name) # !> method redefined; discarding old hello
  if name == 'master'
    "I bow before you, master"
  else
    "Hello, #{name}!"
  end
end

hello "world"   # => "Hello, world!"
hello "master"  # => "I bow before you, master"

def hello(name) # !> method redefined; discarding old hello
  return "I bow before you, master" if name == 'master'
  "Hello, #{name}!"
end

hello "master"  # => "I bow before you, master"

# while

i = 1
puts (i = i * 2) while i < 100

# method names

s = hello "world"
s.gsub(/wor.d/, "Mars") # => "Hello, Mars!"
s # => "Hello, world!"
s.gsub!(/wor.d/, "Mars") # => "Hello, Mars!"
s # => "Hello, Mars!"

s.start_with? "Hello" # => true

# arrays
stuff = ["hello", "world"]
stuff << 42
stuff             # => ["hello", "world", 42]
stuff.pop         # => 42
stuff             # => ["hello", "world"]
stuff[1]          # => "world"
stuff.size        # => 2

# hashes (and symbols)
more_stuff = {"a" => "hello", "b" => "world"}
more_stuff = {:a => "hello", :b => "world"}
more_stuff[:a]    # => "hello"

more_stuff = {a: "hello", b: "world"}

more_stuff.class  # => Hash
more_stuff.methods  # ...

# for loops are rarely ever used. instead...

# blocks
3.times { puts "hi" }
2.upto(4) {|i| puts "#{i}..." }
3.upto(5) do |i|
  puts "#{i}..."
end

stuff.each do |e|
  puts e.reverse
end

wrong_stuff = stuff.map do |e|
  e.gsub "o", "a"
end
wrong_stuff   # => ["hella", "warld"]

def decorate
  puts "in..."
  yield
  puts "...out"
end
decorate { puts "...block..." }

def callback
  yield 3
end
callback {|n| n * 2 }

def callback
  yield 3, 2
end
callback {|n, m| n * m }
