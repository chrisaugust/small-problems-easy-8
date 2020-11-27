# Double Char (Part 1)
#
# Problem
# Write a method that takes a string and returns a new string
# in which every character is doubled.
#
# Examples
# repeater('Hello') == "HHeelllloo"
# repeater("Good job!") == "GGoooodd  jjoobb!!"
# repeater('') == ''
#
# Data Structures / Type Signature
# String -> Array -> String
#
# Algorithm
# 0) initialize an empty array to hold results
# 1) split argument string into an array of characters
# 2) iterate over the array, and for each character,
#    push that character into the results array twice
# 3) join the results array into a string and return
#
# Code
require 'test/unit'

class DoubleChar1 < Test::Unit::TestCase
  def test_repeater
    assert_equal(repeater('Hello'), 'HHeelllloo')
    assert_equal(repeater('Good job!'), 'GGoooodd  jjoobb!!')
    assert_equal(repeater(''), '')
  end
end

def repeater(str)
  results = []

  chars = str.split('')
  chars.each do |c|
    2.times { results << c }
  end

  results.join('')
end
