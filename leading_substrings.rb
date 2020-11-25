# Leading Substrings
#
# Problem
# Write a method that takes a string as an argument and 
# returns a list of all substrings that start of the beginning
# of the original string. The return value (an array) should have
# its elements arranged from shortest to longest.
#
# Examples
# leading_substrings('abc') == ['a', 'ab', 'abc']
# leading_substrings('a') == ['a']
# leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
#
#
# Data Structures / Type Signature
# String -> Array -> Array
#
# Algorithm
# 1) split argument string into an array of characters
# 2) create an empty array for results
# 3) loop over character array
# 4) use Array#each_with_index to build substrings by taking
#    slices of character array, joining them into a string, 
#    and appending them to results array
# 5) return results array
#
# Code
require 'test/unit'

class LeadingSubstrings < Test::Unit::TestCase
  def test_leading_substrings
    assert_equal(leading_substrings('abc'), ['a', 'ab', 'abc'])
    assert_equal(leading_substrings('a'), ['a'])
    assert_equal(leading_substrings('xyzzy'), ['x', 'xy', 'xyz', 'xyzz', 'xyzzy'])
  end
end

def leading_substrings(str)
  characters = str.split('')

  results = []
  characters.each_with_index do |c, i|
    if i == 0
      substr = c
      results << substr
    elsif i > 0
      substr = characters.slice(0, i + 1)
      results << substr.join('')
    end
  end

  results
end
