# Double Char (Part 2)
#
# Problem
# Write a method that takes a string and returns a new string
# in which every consonant character is doubled. Vowels, punctuation,
# and whitespace should not be doubled.
#
# Examples
# double_consonants('String') == "SSttrrinngg"
# double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# double_consonants("July 4th") == "JJullyy 4tthh"
# double_consonants('') == "" Examples
#
# Data Structures / Type Signature
# String -> Array -> String
#
# Algorithm
# 0) initialize an empty array to hold results
# 1) split argument string into an array of characters
# 2) iterate over the array, and for each character,
#    check if the character is a consonant
# 3) push consonant characters into the results array twice,
#    all other characters once
# 4) join the results array into a string and return
#
# Code
require 'test/unit'

class DoubleChar2 < Test::Unit::TestCase
  def test_repeater
    assert_equal(double_consonants('String'), "SSttrrinngg")
    assert_equal(double_consonants("Hello-World!"), "HHellllo-WWorrlldd!")
    assert_equal(double_consonants("July 4th"), "JJullyy 4tthh")
    assert_equal(double_consonants(''), "") 
  end
end

def double_consonants(str)
  results = []

  chars = str.split('')
  chars.each do |c|
    if c =~ /[AEIOUaeiou]/
      results << c
    elsif c =~ /[1-9]/
      results << c
    elsif c =~ /[[:punct:]]/
      results << c
    elsif c =~ /[[:space:]]/
      results << c
    else
      2.times { results << c }
    end
  end 
  results.join('')
end
