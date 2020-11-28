# Reverse the Digits in a Number 
#
# Problem
# Write a method that takes a positive integer as an argument and 
# returns that number with its digits reversed.
#
#
# Examples
# reversed_number(12345) == 54321
# reversed_number(12213) == 31221
# reversed_number(456) == 654
# reversed_number(12000) == 21 # No leading zeros in return value!
# reversed_number(12003) == 30021
# reversed_number(1) == 1
#
#
# Data Structures / Type Signature
# Integer -> Array -> Integer
#
# Algorithm
# 1) convert number to string
# 2) split string to create an array of digits (digits_array)
# 3) digits_array.reverse!
# 4) rev_num = digits_array.join('').to_i
#      
#
# Code
require 'test/unit'

class ReverseDigitsInNumber < Test::Unit::TestCase
  def test_reversed_number
    assert_equal(reversed_number(12345), 54321)
    assert_equal(reversed_number(12213), 31221)
    assert_equal(reversed_number(456), 654)
    assert_equal(reversed_number(12000), 21)
    assert_equal(reversed_number(12003), 30021)
    assert_equal(reversed_number(1), 1)
  end
end

def reversed_number(num)
  num.to_s.split('').reverse!.join('').to_i
end
