# Palindromic Substrings 
#
# Problem
# Write a method that takes a string as argument and
# returns a list of all substrings that are palindromic.
# The return value should be in the same sequence as the 
# substrings in the argument string. Duplicate palindromes
# should be included multiple times. Consider all characters
# (A and a do not match) and assume that single characters
# are not palindromes.
#
# Examples
# palindromes('abcd') == []
# palindromes('madam') == ['madam', 'ada']
# palindromes('hello-madam-did-madam-goodbye') == [
#  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#  '-madam-', 'madam', 'ada', 'oo'
#   ]
# palindromes('knitting cassettes') == [
#  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
#  ]
#
# Data Structures / Type Signature
# String -> Array
#
# Algorithm
# 0) initiate empty palindromic_substrings array
# 1) use all_substrings() to find all substrings in the argument
# 2) iterate through the substrings, checking each with Array#reverse
#    for the palindromes
# 3) return array of palindromes
#
# Code
require 'test/unit'
require_relative 'all_substrings'

# class PalindromicSubstrings < Test::Unit::TestCase
#   def test_palindromes
#     assert_equal(palindromes('abcd'), [])
#     assert_equal(palindromes('madam'), ['madam', 'ada'])
#     assert_equal(palindromes('hello-madam-did-madam-goodbye'), [
#                  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#                  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#                  '-madam-', 'madam', 'ada', 'oo'
#                   ])
#     assert_equal(palindromes('knitting cassettes'), [
#                  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
#                  ])
#   end
# end

def palindromes(str)
  palindromic_substrings = []

  substrings = substrings(str)
  puts substrings

  substrings.each do |substr|
    palindromic_substrings << str if str == str.reverse
  end

  puts palindromic_substrings
  palindromic_substrings
end
