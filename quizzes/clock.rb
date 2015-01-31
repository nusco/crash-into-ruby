class GrandfatherClock
  attr_accessor :time
  
  def initialize(&block)
    @block = block
  end
  
  def chime
    (@time % 12).times { @block.call }
  end
end

clock = GrandfatherClock.new do
  puts "DONG!"
end
clock.time = 20
clock.chime    # prints DONG! 8 times
