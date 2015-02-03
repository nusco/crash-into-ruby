# This quiz is a simplified version of the one in http://pine.fm/LearnToProgram/?Chapter#10.
# To solve it, you need to know how to convert a Ruby block to an object and execute it later.
#
# Write a grandfather_clock() method that takes the time of the day (in hours) and a blocl.
# When you call it, it executes the block multiple times, depending on the time of the day:
#
#    grandfather_clock.chime(1) { puts 'DING!' }      # => (1 am - prints "DING!" once)
#    grandfather_clock.chime(11) { puts 'DING!' }     # => (11 am - prints "DING!" eleven times)
#    grandfather_clock.chime(13) { puts 'DING!' }     # => (1 pm - prints "DING!" once)

# Here is a test for the clock:

require 'test/unit'

class TestGrandfatherClock < Test::Unit::TestCase
  def test_chime_once_at_1am
    chimes = 0
    
    grandfather_clock.chime(1) { chimes += 1 }
    
    assert_equal 1, chimes
  end
  
  def test_chime_eleven_times_at_11am
    chimes = 0
    
    grandfather_clock.chime(11) { chimes += 1 }
    
    assert_equal 11, chimes
  end
  
  def test_chime_once_at_1pm
    chimes = 0
    
    grandfather_clock.chime(13) { chimes += 1 }
    
    assert_equal 1, chimes
  end
end

# Now let's go for the clock itself:

def grandfather_clock(time)
  (time % 12).times { yield }
end
