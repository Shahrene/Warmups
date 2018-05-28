# Scrabble Score
#
# Write a program that, given a word, computes the scrabble score for that word.
#
# Scrabble.score("cabbage")
# # => 14
# Your program should be in a file named scrabble.rb.
#
# Letter Values
# Letter                           Value
# A, E, I, O, U, L, N, R, S, T       1
# D, G                               2
# B, C, M, P                         3
# F, H, V, W, Y                      4
# K                                  5
# J, X                               8
# Q, Z                               10

#1 Program that takes a word and gives it a score based on the game scrabble
#2 Take a word
#3 give each letter of the alphabet a value
#4 turn the word into uppercase
#5 split the word up into letters
#6 assign the value to each letter in the word
#7 sum all the letter values
#6 print the total

require 'pry'

class Scrabble

    def initialize(word)
      @word = word
    end

    def letter_values
  {  "A"=>1, "B"=>3, "C"=>3, "D"=>2,
    "E"=>1, "F"=>4, "G"=>2, "H"=>4,
    "I"=>1, "J"=>8, "K"=>5, "L"=>1,
    "M"=>3, "N"=>1, "O"=>1, "P"=>3,
    "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
    "U"=>1, "V"=>4, "W"=>4, "X"=>8,
    "Y"=>4, "Z"=>10
  }
    end

    def score
      letters = word.upcase.split()
      letters.map do |letter|
        total = 0
        total += letter_values
    end

end
binding.pry
puts
