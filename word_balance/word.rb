# Word Balance
# We're going to balance words on one of the letters in them.
#
# We'll use the position and letter itself to calculate the weight around the balance point.
#A word can be balanced if the weight on either side of the balance point is equal. Not all words can be balanced,
#but those that can are interesting for this challenge.
#
# The formula to calculate the weight of the word is to look at the letter position in the English alphabet
#(so A=1, B=2, C=3 ... Z=26) as the letter weight, then multiply that by the distance from the balance point,
# so the first letter away is multiplied by 1, the second away by 2, etc.
#
# As an example:
#
# STEAD balances at T: 1 * S(19) = 1 * E(5) + 2 * A(1) + 3 * D(4))
# Input Description - You'll be given a series of English words.
#
# Example: STEAD
#
# Output Description - Your program or function should emit the words split by their balance point and the weight on
# either side of the balance point.
#
# Example: S T EAD - 19
#
# This indicates that the T is the balance point and that the weight on either side is 19.
#
# Try these words...
# CONSUBSTANTIATION
# WRONGHEADED
# UNINTELLIGIBILITY
# SUPERGLUE

def balance word
  scores = word.downcase.split('').map { |letter| get_score(letter) }
  scores.each_index do |bal_point_idx|
    weights = calc_weights(scores, bal_point_idx)
    return weights if weights[:balanced]
  end
  return {balanced: false}
end

def get_score letter
  ('a'..'z').to_a.index(letter) + 1
end

def calc_weights scores, bal_point_idx
  weights = scores.each_with_index.map do |letter_score, idx|
    letter_score * (idx - bal_point_idx)
  end
  return {
    balanced: weights.sum == 0,
    per_side: weights[0...bal_point_idx].sum.abs,
    idx: bal_point_idx
  }
end

def display_success bal_point, word
  word[bal_point[:idx]] = " #{word[bal_point[:idx]]} "
  puts "#{word.upcase} - #{bal_point[:per_side]}"
end

def display_fail word
  puts "#{word} does not balance".upcase
end

require_relative 'ruby_wb_lib'

words = %w(STEAD CONSUBSTANTIATION WRONGHEADED UNINTELLIGIBILITY SUPERGLUE)
words.each do |word|
  weights = balance(word)
  weights[:balanced] ? display_success(weights, word) : display_fail(word)
end
