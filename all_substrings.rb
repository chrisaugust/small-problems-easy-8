# All Substrings 
#
# Problem
# Write a method that returns a list of all substrings of
# a string provided as an arguments. The returned list should be 
# ordered by the substrings' position in the argument string, ie 
# substrings starting at index 0 come first, followed by substrings 
# starting at index 1, etc. The substrings at a given index position 
# should be returned in order from shortest to longest.
#
# Examples
# substrings('abcde') == [
#   'a', 'ab', 'abc', 'abcd', 'abcde',
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
#   ]
#
# Data Structures / Type Signature
# String -> Array
#
# Algorithm
# 0) initialize an empty results array
# 1) split string into an array of characters
# 2) loop through characters of the array
# 3) for each character, loop through the array
#    from that character's index value to the end 
#    of the character array to determine the substrings
# 4) append the substrings to results array
#
# Code
require 'test/unit'

class AllSubstrings < Test::Unit::TestCase
  def test_all_substrings
    assert_equal(substrings('abcde'),
      [ 'a', 'ab', 'abc', 'abcd', 'abcde', 
        'b', 'bc', 'bcd', 'bcde',
        'c', 'cd', 'cde',
        'd', 'de',
        'e'
      ])
  end
end

def substrings(str)
  all_substrings = []
  
  characters = str.split('')
  characters.each_with_index do |c,i|
    substrings = []
    (i..characters.length).each_with_index do |_, j|
      substrings << characters.slice(i, j+1).join('')
    end 
    all_substrings << substrings
  end

  return all_substrings.flatten
end
