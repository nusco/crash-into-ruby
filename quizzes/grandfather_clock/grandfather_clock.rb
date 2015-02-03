# This is the original OOP version of the Grandfather Clock quiz from
# http://pine.fm/LearnToProgram/?Chapter#10. To solve it, you need to know how
# to convert a Ruby block to an object and execute it later - and you also need
# to know the basics of OOP: how to define a class, initialize an object, and
# so on.
#
# Write a GrandfatherClock class that has a configurable alarm. When you create
# the clock, you pass it a block, like this:
#
#    clock = GrandfatherClock.new { puts 'DING!' }
#
# Then you set the time of the day, like this:
#
#  clock.time = 20
#
# After you configure the clock, you can call:
#
#    clock.chime
#
# Now the clock will execute the method once at 1pm, four times at 4am, and so on.

# Here is a test for the clock:

require 'test/unit'

class TestGrandfatherClock < Test::Unit::TestCase
  def setup
    @chimes = 0
    @clock = GrandfatherClock.new { @chimes += 1 }
  end
  
  def test_chime_once_at_1am
    @clock.time = 1
    
    @clock.chime
    
    assert_equal 1, @chimes
  end
  
  def test_chime_eleven_times_at_11am
    @clock.time = 11
    
    @clock.chime
    
    assert_equal 11, @chimes
  end
  
  def test_chime_once_at_1pm
    @clock.time = 13
    
    @clock.chime
    
    assert_equal 1, @chimes
  end
end

# Now let's go for the clock itself:

class GrandfatherClock
  # TODO: it's up to you now. Make the tests green!
end
