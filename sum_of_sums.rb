# Sum of Sums
#
# Problem
# Write a method that takes an Array of numbers and 
# returns the sum of the sums of each leading subsequence
# for that Array. Assume that the Array always contains
# at least one number.
# 
#
# Examples
# sum_of_sums([3, 5, 2]) == 
#             (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# sum_of_sums([1, 5, 7, 3]) == 
#             (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# sum_of_sums([4]) == 4
# sum_of_sums([1, 2, 3, 4, 5]) == 35
#
#
# Data Structures / Type Signature
# Array -> Integer
#
#
# Algorithm
# 1) initialize a results variable called sum_of_subseq_sums
# 2) loop through argument array with Array#each_with_index
# 3)    for each subsequence (use Array#slice) of index value 0 
#       to index value n, use Array#reduce to sum the subsequence
# 4)       results += subsequence_sum
# 5) return sum_of_subseq_sums
#
#
# Code
require 'test/unit'

class SumOfSums < Test::Unit::TestCase
  def test_sum_of_sums
    assert_equal(sum_of_sums([3, 5, 2]), 21)
    assert_equal(sum_of_sums([1, 5, 7, 3]), 36)
    assert_equal(sum_of_sums([4]), 4)
    assert_equal(sum_of_sums([1, 2, 3, 4, 5]), 35)
  end
end

def sum_of_sums(num_arr)
  sum_of_subseq_sums = 0
  
  num_arr.each_with_index do |elem, idx|
    subsequence = num_arr.slice(0, idx + 1)
    subseq_sum = subsequence.reduce(:+)
    sum_of_subseq_sums += subseq_sum
  end

  sum_of_subseq_sums
end
