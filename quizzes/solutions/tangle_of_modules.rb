# Your company asked you to fix a bug in its legacy printing system. According
# to the company’s bug management application, there is a problem with the code below:
# print_to_screen() is not calling the right print() method. The bug report doesn’t
# provide anymore details.
#
# You can just run the code and see what's happening - and after that, you can fix the
# bug by changing a single line. But don't do that just yet. Instead, try to reason about
# the code. To solve this quiz, do two things:
#
# 1. Draw the chain of modules on paper. Based on that, can you guess which version of
# print() gets called—the one in Printable or the one in Document?
#
# 2. How can you quickly fix the code so that print_to_screen() calls the other version
# of print() instead?
#
# Try to do both things before you ever run this program. Then feel free to check whether
# your assumption are right: run the program, see what happens, and finally fix the code.

module Printable
  def print
    puts "Printable#print()"
  end
  
  def prepare_cover
    # there is code here, but we don't care about it
  end
end

module Document
  def print_to_screen
    prepare_cover
    format_for_screen
    print
  end
  
  def format_for_screen
    # we don't care about this code either
  end
  
  def print
    puts "Document#print()"
  end
end

class Book
  include Printable
  include Document
  # ...  
end

b = Book.new
b.print_to_screen
