# Get the Middle Character 
#
# Problem
# Write a method that takes a non-empty string argument and returns
# the middle character (if argument is odd) or characters (if argument 
# is even, exactly two characters).
#
# Examples
# center_of('I love ruby') == 'e'
# center_of('Launch School') == ' '
# center_of('Launch') == 'un'
# center_of('Launchschool') == 'hs'
# center_of('x') == 'x'
#
#
# Data Structures / Type Signature
# String -> String
#
# Algorithm
# 1) use String#length to determine if argument string is even or odd
# 2) if arg.length.even?
#      arg(length-1, 2) # take a 2 value slice starting at index (length-1)
# 3) if arg.length.odd?
#      arg[length-1/2]
#
#      
#
# Code
require 'test/unit'

class GetMiddleCharacter < Test::Unit::TestCase
  def test_center_of
    assert_equal(center_of('I love ruby'), 'e')
    assert_equal(center_of('Launch School'), ' ')
    assert_equal(center_of('Launch'), 'un')
    assert_equal(center_of('Launchschool'), 'hs')
    assert_equal(center_of('x'), 'x')
  end
end

def center_of(str)
  length = str.length

  # convert to array to access chars by index and slice
  chars = str.split('')
  
  if length.even?
    result = chars[length/2 - 1,2].join('')
  elsif length.odd?
    result = str[(length-1)/2]
  end
  puts result
  result
end
