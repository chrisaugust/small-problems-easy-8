# FizzBuzz 
#
# Problem
# Write a method that takes two arguments: the first is the starting number, 
# and the second is the ending number. Print out all numbers between the two 
# numbers, except if a number is divisible by 3, print "Fizz", if a number is 
# divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, 
# print "FizzBuzz".
#
# Examples
# fizzbuzz(1, 15) #=> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13,
#                 #   14, FizzBuzz
#
# Data Structures / Type Signature
# Integer -> Array (for testing), print to stdout
#
# Algorithm
# 1) make a range with the two Integer arguments
# 2) iterate over the range
# 3) if i % 3 == 0 && i % 5 == 0
#      print 'FizzBuzz'
#    elsif i % 3 == 0 
#      print 'Fizz'
#    elsif i % 5 == 0  
#      print 'Buzz'
#    else
#      print i
#    end
#
# Code
require 'test/unit'

class FizzBuzz < Test::Unit::TestCase
  def test_fizzbuzz
    assert_equal(fizzbuzz(1,15), [1, 2, 'Fizz', 4, 'Buzz', 'Fizz', 7, 8,
                 'Fizz', 'Buzz', 11, 'Fizz', 13, 14, 'FizzBuzz'])
  end
end

def fizzbuzz(n1, n2)
  results = []
  (n1..n2).each do |i|
    if (i % 3 == 0) && (i % 5 == 0)
      results << 'FizzBuzz'
    elsif i % 3 == 0
      results << 'Fizz'
    elsif i % 5 == 0
      results << 'Buzz'
    else
      results << i
    end
  end
  p results.join(' ')
  results
end
