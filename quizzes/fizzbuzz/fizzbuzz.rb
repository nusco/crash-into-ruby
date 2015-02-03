# (Slightly modified from the classic quiz at http://rubyquiz.com/quiz126.html)

# Write a method that takes a number from 1 to 100. For most numbers, the method
# just returns the same number it gets. However, there are exceptions:
#
# - For multiples of three, the method returns the string “Fizz”.
# - For multiples of five, the method returns the string “Buzz”.
# - For multiples of both three and five, the method returns the string “FizzBuzz”.
#
# Here is a test for the fizzbuzz() method. If you run this file (with "ruby fizzbuzz.rb"),
# and the test is green, then your job is done.


require 'test/unit'

class TestFizzBuzz < Test::Unit::TestCase

  def test_fizzbuzz
    assert_equal 1,          fizzbuzz(1)
    assert_equal 2,          fizzbuzz(2)
    assert_equal "Fizz",     fizzbuzz(3)
    assert_equal 4,          fizzbuzz(4)
    assert_equal "Buzz",     fizzbuzz(5)
    assert_equal "Fizz",     fizzbuzz(6)
    assert_equal 7,          fizzbuzz(7)
    assert_equal 8,          fizzbuzz(8)
    assert_equal "Fizz",     fizzbuzz(9)
    assert_equal "Buzz",     fizzbuzz(10)
    assert_equal 11,         fizzbuzz(11)
    assert_equal "Fizz",     fizzbuzz(12)
    assert_equal 13,         fizzbuzz(13)
    assert_equal 14,         fizzbuzz(14)
    assert_equal "FizzBuzz", fizzbuzz(15)
    assert_equal 16,         fizzbuzz(16)
    # Let's skip a few numbers.
    assert_equal "FizzBuzz", fizzbuzz(30)
    assert_equal 31,         fizzbuzz(31)
    assert_equal 32,         fizzbuzz(32)
    assert_equal "Fizz",     fizzbuzz(33)
    assert_equal 34,         fizzbuzz(34)
    assert_equal "Buzz",     fizzbuzz(35)
    # OK, enough. Let's go straight to the end.
    assert_equal "Buzz",     fizzbuzz(100)
  end
end

# And here is the part that you care about: write the code in this
# method to make the test green.
# A couple of suggestion: to check whether a number x is divisible
# by 3, you can write:
#   x % 3 == 0
# Use the same technique to check whether a number is divisible by 5.
def fizzbuzz(n)
  # TODO
end
