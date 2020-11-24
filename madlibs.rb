# Madlibs
#
# Problem
# Create a simple mad-lib program that prompts for a noun, a verb,
# an adverb, and an adjective, injecting those words into a story.
#
#
# Example
#
# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly
#
# Do you walk your blue dog quickly? That's hilarious!
# 
#
# Data Structures / Type Signature
# hash = { noun: "<noun",
#          verb: "<verb>",
#          ...
#        }
#
# String -> String
#
#
# Algorithm
# 0) initialize a madlibs hash
#
# madlibs method
# 1) define a madlibs string that summarizes a funny story
# 2) interpolate user-chosen word from hash into the madlibs string
# 3) return madlibs string
#
# main method
# 1) prompt user for a word of word type x; add that word
#    to the hash
# 2) repeat step 2 until the hash is full
# 3) call madlibs() with the user defined hash
# 4) display the results of madlibs()
#
# Code
require 'test/unit'

class Madlibs < Test::Unit::TestCase
  def test_madblibs
    madlibs_hash = { noun: "dog", verb: "walk", adj: "blue", adv: "quickly" }
    assert_equal(madlibs(madlibs_hash),
                         "Do you walk your blue dog quickly? That's hilarious!")
    assert_equal(main(madlibs_hash), "Do you walk your blue dog quickly? That's hilarious!")
  end
end

mad_hash = { noun: "", verb: "", adj: "", adv: "" }

def madlibs(mad_hash)
  madlibs_string = 
  "Do you #{mad_hash[:verb]} your #{mad_hash[:adj]} #{mad_hash[:noun]} #{mad_hash[:adv]}? That's hilarious!"
end

def main(mad_hash)
  puts "What's your favorite animal for a pet?"
  noun = gets.chomp
  mad_hash[:noun] = noun
  
  puts "What's your favorite thing to do with your pet?"
  verb = gets.chomp
  mad_hash[:verb] = verb

  puts "What's your favorite color for the pet you mentioned above?"
  adj = gets.chomp
  mad_hash[:adj] = adj

  puts "Give me a good adverb (ending in -ly) to go with your favorite pet related activity"
  adv = gets.chomp
  mad_hash[:adv] = adv

  puts madlibs(mad_hash)
  user_defined_madlib = madlibs(mad_hash)

end
